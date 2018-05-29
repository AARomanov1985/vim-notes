" Vim syntax file
" Language:		note
" Maintainer:	Aleksandr Romanov
" License:      Vim
" Last Change:	2018 May 29

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

syn keyword taskError		ERROR CRITICAL PROBLEM PROBLEMS
syn keyword taskTodo		TODO TARGET DESCRIPTION QA_TEST SEE
syn keyword taskDraft		DRAFT FIX CAUSE CODE_REVIEW
syn keyword taskDone		DONE SUMMARY SOLUTION INFO STATUS DELIVERED SUCCESS
syn keyword taskProgress 	INPROGRESS WAIT NOTE LINK CANCELED
syn region  taskNote		start=+NOTES:+ skip=+\\\\\|\\"+  end=+"+
syn region  taskImportant	start=+IMPORTANT:+ skip=+\\\\\|\\"+  end=+"+
syn region  taskTips 		start=+TIPS:+ skip=+\\\\\|\\"+  end=+"+


" Define the default highlighting.
command -nargs=+ HiLink hi def link <args>
HiLink taskComment		Comment
HiLink taskDescription	        Function
HiLink taskProgress		Function
HiLink taskError		Special
HiLink taskImportant	        Special
HiLink taskTodo			Statement
HiLink taskNote			Statement
HiLink taskDraft		String
HiLink taskDone			Type
HiLink taskTips			Type
" Not defined:
HiLink taskNumber		Number
HiLink taskType			Type

delcommand HiLink
let b:current_syntax = "note"
" vim: ts=8
