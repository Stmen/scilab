// ============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2016 - Scilab Enterprises - Pierre-Aime AGNEL
//
//  This file is distributed under the same license as the Scilab package.
// ============================================================================

// <-- CLI SHELL MODE -->
// <-- Non-regression test for bug 14662 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=14662
//
// <-- Short Description -->
// A = [A 'some text'] matrix of string concatenation with simple quote led to a parser error

A = "some text";
ierr = execstr("A = [A ''some text''];", "errcatch");
assert_checkequal(ierr, 0);

