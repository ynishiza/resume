% CV template
%
% Author: Christopher Keyes
% Updated: September 24, 2021
%
% OK to use!

\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_style}[Oct 2018 custom cv class]
\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{tabularx}
\RequirePackage{pgffor}
\RequirePackage{pbox}
\RequirePackage{geometry}
\RequirePackage{fontawesome5}

% lengths and orientation
\setlength{\parindent}{0ex} % Remove indent
\setlength{\parskip}{0ex}
\geometry{letterpaper, portrait, margin=0.5in}

% format of section headings
\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]
    
\titlespacing*{\section}{0pt}{1.6ex}{2.5ex}

% format subsection headings
\titleformat{\subsection}
    {\large\bfseries\raggedright}
    {}{0em}
    {}

\newcommand{\subsectiondetails}[3]{
	\textit{#1}. #2, #3.
}


%%% AWESOME %%%
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors
\definecolor{darktext}{HTML}{414141}
\colorlet{text}{darkgray}
\colorlet{graytext}{gray}
\colorlet{lighttext}{lightgray}
\colorlet{sectiondivider}{gray}
\newcommand{\cventry}[5]{%
  \subsection{#2}
	\textit{#1}. #3, #4\\
  #5
}
% \newcommand*{\cventry}[5]{%
%   \vspace{-2.0mm}
%   \setlength\tabcolsep{0pt}
%   \setlength{\extrarowheight}{0pt}
%   \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
%     \ifempty{#2#3}
%       {\entrypositionstyle{#1} & \entrydatestyle{#4} \\}
%       {\entrytitlestyle{#2} & \entrylocationstyle{#3} \\
%       \entrypositionstyle{#1} & \entrydatestyle{#4} \\}
%     \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}}
%   \end{tabular*}%
% }


\newcommand{\mobile}[1]{\href{tel:#1}{\faMobile \ #1}}
\newcommand{\email}[1]{\href{mailto:#1}{\faEnvelope\ #1}} 
\newcommand{\homepage}[1]{\href{#1}{\faHome\ #1}}
\newcommand{\github}[1]{\href{https://github.com/#1}{\faGithubSquare\ #1}}
\newcommand{\linkedin}[1]{\href{https://www.linkedin.com/in/#1}{\faLinkedin\ #1}}

% Command to produce your name, nice and big
\newcommand{\name}[1]{
    {\LARGE\scshape{#1}} \vspace{1em}
}

% Command to produce a talk:
%	#1 talk title
%	#2 seminar title
%	#3 host location
%	#4 date
% \newcommand{\talk}[4]{
% 	\textit{#1}. #2, #3, #4.
% }

% Command to produce a paper:
%	#1 (optional) joint authors
% 	#2 title
%	#3 status - in preparation, submitted, accepted by..., to appear in..., etc.
%	#4 Anything else, e.g. links
% \newcommand{\paper}[4][\@nil]{%
%   \def\tmp{#1}%
  
%    \ifx\tmp\@nnil
%        \textbf{#2}. #3. #4
%     \else
%        \textbf{#2} (joint with #1). #3. #4
%     \fi
% }
    
    
