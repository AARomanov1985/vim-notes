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

syn keyword taskError		TODAY ERROR CRITICAL PROBLEM PROBLEMS FAIL FAILED DUE_DATE AMOUNT Q1 Q2 Q3
syn keyword taskTodo		THIS_WEEK TODO TARGET GOAL DESCRIPTION QA_TEST SEE QUESTION QUESTIONS INVESTIGATION ESTIMATION DAY WEEK MONTH QUARTER HALF_OF_YEAR YEAR TRIENNIAL QUINQUENNIAL TEN-YEAR NEXT_STEP OPEN
syn keyword taskDraft		LATER DRAFT FIX CAUSE CODE_REVIEW HOLD
syn keyword taskDone		DONE SUMMARY SOLUTION INFO STATUS DELIVERED SUCCESS DONE_ON USEFULNESS
syn keyword taskProgress 	TOMORROW INPROGRESS INPR WAIT NOTE LINK CANCELED ABRT START_DATE END_DATE TYPE_OF_PLAN PLANNED INCOME IMPORTANCE COST PROBABILITY AVAILABLE_TIME PLANNED_TIME SPARE_TIME CURRENT
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
