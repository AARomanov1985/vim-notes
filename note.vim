" Vim syntax file
" Language:		note
" Maintainer:	Aleksandr Romanov
" License:      Vim
" Last Change:	2017 Aug 8

if exists("b:current_syntax")
  finish
endif


syn sync ccomment taskComment

syn region taskDescription	start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region taskDescription	start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region taskComment	start="/\*"  end="\*/" 
syn match  taskComment	"--.*$" 

" Numbers:
syn match TaskNumber	"-\=\<\d*\.\=[0-9_]\>"

syn keyword taskError		ERROR CRITICAL PROBLEM
syn keyword taskTodo		TODO TARGET DESCRIPTION
syn keyword taskDraft		DRAFT FIX CAUSE CODE_REVIEW
syn keyword taskDone		DONE SUMMARY SOLUTION INFO
syn keyword taskProgress 	INPROGRESS WAIT NOTE
syn region  taskNote		start=+NOTE:+ skip=+\\\\\|\\"+  end=+"+
syn region  taskImportant	start=+IMPORTANT:+ skip=+\\\\\|\\"+  end=+"+
syn region  taskTips 		start=+TIPS:+ skip=+\\\\\|\\"+  end=+"+


" Define the default highlighting.
command -nargs=+ HiLink hi def link <args>
HiLink taskComment		Comment
HiLink taskDescription	Function
HiLink taskProgress		Function
HiLink taskError		Special
HiLink taskImportant	Special
HiLink taskTodo			Statement
HiLink taskNote			Statement
HiLink taskDraft		String
HiLink taskDone			Type
HiLink taskTips			Type
HiLink taskNumber		Number
HiLink taskType			Type

delcommand HiLink
let b:current_syntax = "note"
" vim: ts=8
