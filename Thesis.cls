%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% This class file defines the structure and design of the template.
%
% There is one part of this file that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the commented "DOCUMENT VARIABLES"
% section below.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb  {1.456in}  % left margin (3.7cm NTU)  default: 1.5in
                        { 0.8in}  % top margin       default: 0.6in
                        { 1.0in}  % right margin     default: 1.0in
                        { 0.8in}  % bottom margin    default: 0.8in
                        {  20pt}  % head height      default: 20pt
                        {0.25in}  % head sep         default: 0.25in
                        {   9pt}  % foot height      default: 9pt
                        { 0.3in}  % foot sep         default: 0.3in
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter.\ #1}{\@chapapp\ \thechapter.\ #1}}
%\renewcommand{\sectionmark}[1]{}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amscd,amsthm,xspace}

\theoremstyle{plain}

\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}{Proposition}[chapter]
\newtheorem{axiom}[theorem]{Axiom}

\theoremstyle{definition}
\newtheorem{definition}{Definition}[chapter]
\newtheorem{assumption}{Assumption}[chapter]
\newtheorem{example}{Example}[chapter]
\newtheorem*{pf}{Proof}

\theoremstyle{remark}
\newtheorem{remark}{Remark}[chapter]

\usepackage[centerlast,small,sc]{caption}
\captionsetup{justification=justified,singlelinecheck=true}
\setlength{\captionmargin}{20pt}
\newcommand{\pref}[1]{Part~\ref{#1}}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~(\ref{#1})}
\newcommand{\exref}[1]{Example~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\newcommand{\asref}[1]{Assumption~\ref{#1}}
\newcommand{\psref}[1]{Proposition~\ref{#1}}
\newcommand{\dref}[1]{Definition~\ref{#1}}
\newcommand{\lmref}[1]{Lemma~\ref{#1}}
\newcommand{\thref}[1]{Theorem~\ref{#1}}
\newcommand{\rref}[1]{Remark~\ref{#1}}
%\newcommand{\lcite}[2][]{{#1},~\cite{#2}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
%\usepackage[scriptsize]{subfigure} %depracated, use subfig or subcaption
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{Styles/lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }

% This only changes you PDF information. The thesis title and author name need further changes in \thesistile and \authors
% To remove backref of references (the page number associated with the references where it is cited), please remove "backref=page".
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=1,bookmarksnumbered=true,hypertexnames=true,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={black},pdfauthor={Chen Wang},pdftitle={Kernel Learning for Visual Perception},
   pdfstartview={FitV},unicode,breaklinks=true,plainpages=false,backref=page]{hyperref}

\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}

%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \examiner{} below is
%	defined as \examname above so you cite it as \examname
%----------------------------------------------------------------------------------------

%Your thesis title - this is used in the title and abstract
%-------------------------------------------------
\thesistitle{\href{https://github.com/wang-chen/thesis_template_ntu}{The Greatest Thesis in the World}} %
%-------------------------------------------------
\supervisor{Prof. Einstein \textsc{XXX}} % You supervisor's name - this is used in the title page
%-------------------------------------------------
\examiner{} % Your examiner's name - this is not currently used anywhere in the template, cite it with \examname if you want it
%-------------------------------------------------
\degree{Doctor of Philosophy} % Your degree name - this is currently used in the title page and abstract
%-------------------------------------------------
\authors{\href{https://wang-chen.github.io}{Author Name}} % Your name - this is used in the title page and abstract
%-------------------------------------------------
\addresses{} % Your address - this is not currently used anywhere in the template, cite it with \addressnames if you want it
%-------------------------------------------------
\subject{} % Your subject area - this is not currently used anywhere in the template, cite it with \subjectname if you want it
%-------------------------------------------------
\keywords{} % Keywords for your thesis - this is not currently used anywhere in the template, cite it with \keywordnames if you want it
%-------------------------------------------------
\university{\texorpdfstring{\href{http://www.university.com} % Your university's URL
                {University Name}} % Your university's name - this is currently used in the title page
                {University Name}}
%-------------------------------------------------
\UNIVERSITY{\texorpdfstring{\href{http://www.ntu.edu.sg/} % Your university's URL
                {UNIVERSITY NAME (IN BLOCK CAPITALS)}} % Your university's name in capitals - this is currently used in the abstract page
                {UNIVERSITY NAME (IN BLOCK CAPITALS)}}
%-------------------------------------------------
\department{\texorpdfstring{\href{http://www.eee.ntu.edu.sg} % Your department's URL
                {School of Electrical \& Electronic Engineering}} % Your department's name - used in the title page and abstract
                {Department or School Name}}
%-------------------------------------------------
\DEPARTMENT{\texorpdfstring{\href{Department or School Web Site URL Here (include http://)} % Your department's URL
                {DEPARTMENT OR SCHOOL NAME (IN BLOCK CAPITALS)}} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
                {DEPARTMENT OR SCHOOL NAME (IN BLOCK CAPITALS)}}
%-------------------------------------------------
\group{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {Research Group Name}} % Your research group's name - this is currently used in the title page
                {Research Group Name}}
%-------------------------------------------------
\GROUP{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}} % Your research group's name in capitals - this is not currently used anywhere in the template, cite it with \GROUPNAME if you want it
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
%-------------------------------------------------
\faculty{\texorpdfstring{\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
                {Faculty Name}} % Your faculty's name - this is currently used in the abstract page
                {Faculty Name}}
%-------------------------------------------------
\FACULTY{\texorpdfstring{\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
                {FACULTY NAME (IN BLOCK CAPITALS)}} % Your faculty's name in capitals - this is not currently used anywhere in the template, cite it with \FACNAME if you want it
                {FACULTY NAME (IN BLOCK CAPITALS)}}
%----------------------------------------------------------------------------------------

%----------------------------------------------------------------------------------------
% TITLE PAGE DESIGN
%----------------------------------------------------------------------------------------

%\newcommand{\HRule}{\rule{\linewidth}{0.5mm}} % New command to make the lines in the title page


\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
  \begin{center}
  \setstretch{2}
  \vfill
  \textbf{\LARGE \newline \rule{\linewidth}{2pt}\\\vspace{-7pt}\ttitle\\\rule{\linewidth}{2pt}}\\% Thesis title
  % \setstretch{1.5}
  \vfill
  \href{http://www.ntu.edu.sg}{\includegraphics[width=230pt]{Styles/ntu_logo}}\\%[2cm]
  \vfill
  \textbf{\Large \authornames}\\%[1.2cm]
  {\large \deptname}\\%[1.2cm] % University name
  \vfill
  \setstretch{1.2}
  \large A thesis submitted to the Nanyang Technological University \\ in partial fulfillment of the requirements for the degree of\\ \degreename\\[1cm] % University requirement text
  {\large\bf \the\year}\\[2cm] % Date
  \end{center}
  \end{titlepage}
  \cleardoublepage
}

\newcommand\maketitleforreview{
	\btypeout{Title Page}
	\hypersetup{pdftitle={\@title}}
	\hypersetup{pdfsubject=\subjectname}
	\hypersetup{pdfauthor=\authornames}
	\hypersetup{pdfkeywords=\keywordnames}
	\thispagestyle{empty}
	\begin{titlepage}
		\begin{center}
			\setstretch{2}
			\vfill
			\textbf{\LARGE \newline \ttitle}\\% Thesis title
			\vfill
			\textbf{\Large \textbf{\authornames}}\\[1cm]
			\vfill
			{\large \textbf{\deptname}}\\%[1.2cm] % University name
			[1.2cm]
			\setstretch{1.2}
			\large A thesis submitted to the Nanyang Technological University \\ in partial fulfillment of the requirements for the degree of\\ \degreename\\[1cm] % University requirement text
			{\large\bf \the\year}\\[2cm] % Date
		\end{center}
	\end{titlepage}
	\cleardoublepage
}


%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{plain}
  \vspace*{1.5cm}
 % \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
%    {\normalsize \UNIVNAME \par} % University name in capitals
%    \bigskip
    {\flushleft\Huge{\textbf{Abstract}} \par}
%    {\normalsize \facname \par} % Faculty name
%    {\normalsize \deptname \par} % Department name
%    \bigskip
%    {\normalsize \degreename\par} % Degree name
%    \bigskip
%    {\normalsize\bf \@title \par} % Thesis title
%    \medskip
%    {\normalsize by \authornames \par} % Author name
%    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}

%----------------------------------------------------------------------------------------
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols and Acronyms}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\vspace*{1.5cm}
\begin{center}{\flushleft\Huge{\textbf{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
\cleardoublepage
}

\usepackage{tikz}
\usepackage{eso-pic}
% NTU Style 3 statements
\newcommand\thesisdeclareOriginality[3]{
	\btypeout{Declaration}
	\thispagestyle{empty}
	\begin{spacing}{2}
		\begin{center}\Large \underline{\bf Statement of Originality}\end{center}
		{\textnormal{\large #1}}
		\vspace{2.5cm}
		\begin{center}
			\makebox[4cm]{#2}  \hfill
      \tikz[remember picture,overlay] 
      \node[opacity=0.9,inner sep=0pt]at (2.13, 0.5) {\includegraphics[width=4cm,height=1.527cm]{Styles/ntu-watermark.png}};
      \makebox[4cm]{\includegraphics[height=0.9cm]{#3}}\\
		\end{center}
		\vspace{-1.8cm}
		\begin{center}
			\makebox[4cm]{\dotfill}  \hfill \makebox[4cm]{\dotfill}\\
			\makebox[4cm]{Date}    \hfill \makebox[4cm]{\authornames}
		\end{center}
	\end{spacing}
	\cleardoublepage
}

\newcommand\thesisdeclareSupervisor[3]{
	\btypeout{Declaration}
	\thispagestyle{empty}
	\begin{spacing}{2}
		\begin{center}\Large \underline{\bf Supervisor Declaration Statement}\end{center}
		{\textnormal{\large #1}}
		\vspace{2.5cm}
		\begin{center}
			\makebox[4cm]{#2}  \hfill
      \tikz[remember picture,overlay] 
      \node[opacity=0.9,inner sep=0pt]at (2.13, 0.5) {\includegraphics[width=4cm,height=1.527cm]{Styles/ntu-watermark.png}};
			\makebox[4cm]{\includegraphics[height=0.9cm]{#3}}\\
		\end{center}
		\vspace{-1.8cm}
		\begin{center}
			\makebox[4cm]{\dotfill}  \hfill \makebox[4cm]{\dotfill}\\
			\makebox[4cm]{Date}    \hfill \makebox[4cm]{\supname}
		\end{center}
	\end{spacing}
	\cleardoublepage
}

\newcommand\thesisdeclareAuthorship[4]{
	\btypeout{Declaration}
	\thispagestyle{empty}
	\begin{spacing}{2}
		\begin{center}\Large \underline{\bf Authorship Attribution Statement}\end{center}
		{\textnormal{\large #1}}
	\end{spacing}
	\begin{spacing}{2}
		{\setstretch{1.0}#2}
		\vspace{2.5cm}
		\begin{center}
			\makebox[4cm]{#3}  \hfill
      \tikz[remember picture,overlay] 
      \node[opacity=0.9,inner sep=0pt]at (2.13, 0.5) {\includegraphics[width=4cm,height=1.527cm]{Styles/ntu-watermark.png}};
			\makebox[4cm]{\includegraphics[height=0.9cm]{#4}}\\
		\end{center}
		\vspace{-1.8cm}
		\begin{center}
			\makebox[4cm]{\dotfill}  \hfill \makebox[4cm]{\dotfill}\\
			\makebox[4cm]{Date}    \hfill \makebox[4cm]{\authornames}
		\end{center}
	\end{spacing}
	\cleardoublepage
}


\newcommand\authorpublications[1]{
	\newcommand\secname{List of Author's Awards, Patents, and Publications}
%	\addcontentsline{toc}{section}{\secname}
	\markboth{\secname}{\secname}
	\btypeout{\secname}
	\addtotoc{\secname}
	\thispagestyle{plain}
	\vspace*{1.5cm}
	\begin{center}{\flushleft\Huge{\textbf{\secname\footnote[1]{The superscript $^*$ indicates joint first authors}}} \par}\end{center}
	{\normalsize #1}
	\vfil\vfil\null
	\cleardoublepage
}

\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput


