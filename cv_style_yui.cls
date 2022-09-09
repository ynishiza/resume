% CV template
%
% Primarily based on 
%     https://github.com/c-keyes/CV_template
%

\LoadClass[9pt]{extarticle}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_style}[Oct 2018 custom cv class]
\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{tabularx}
\RequirePackage{pgffor}
\RequirePackage{pbox}
\RequirePackage{geometry}
\RequirePackage{fontawesome5}
% colors
%  xcolor: https://ftp.yz.yamagata-u.ac.jp/pub/CTAN/macros/latex/contrib/xcolor/xcolor.pdf
\usepackage[colorlinks = true, linkcolor = darkgray, urlcolor = darkgray, citecolor = darkgray, anchorcolor = darkgray]{hyperref}

\usepackage{enumitem}
\usepackage{etaremune}
\usepackage{amsmath}

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
    
    
%%%%%%%%%%%%%%%%%%%% START MY COMMANDS %%%%%%%%%%%%%%%%%%%%
% Formatting
\setlength{\parindent}{0ex} % Paragraph indent
\setlength{\parskip}{-0.5em} % Space between paragraphs
\geometry{letterpaper, portrait, margin=0.5in}

% \href link format
\hypersetup{    
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}

% Personal info
\newcommand{\mobile}[1]{\href{tel:#1}{\faMobile \ #1}}
\newcommand{\email}[1]{\href{mailto:#1}{\faEnvelope\ #1}} 
\newcommand{\homepage}[1]{\href{#1}{\faHome\ #1}}
\newcommand{\github}[1]{\href{https://github.com/#1}{\faGithubSquare\ #1}}
\newcommand{\linkedin}[1]{\href{https://www.linkedin.com/in/#1}{\faLinkedin\ #1}}
\newcommand{\liststyle}{\setlength\itemsep{-0.2em}}

% Entry
\newcommand{\cventry}[5]{%
  \subsection{#2}
	\textit{#1}. #3, #4
  #5
}

% Reference items
%
% CLI
 \newcommand{\rf}{\href{https://nodejs.org/}{}}
\newcommand{\rfneovim}{\href{https://neovim.io/}{neovim}}
\newcommand{\rfvim}{\href{https://www.vim.org/}{vim}}
\newcommand{\rfgit}{\href{https://git-scm.com/}{git}}
\newcommand{\rftmux}{\href{https://github.com/tmux/tmux}{tmux}}
\newcommand{\rfbash}{\href{https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html}{bash}}
\newcommand{\rfgpg}{\href{https://nodejs.org/}{gpg}}
\newcommand{\rflatex}{\href{https://www.latex-project.org/}{LaTeX}}
% Programming
\newcommand{\rftypescript}{\href{https://www.typescriptlang.org/}{TypeScript}}
\newcommand{\rfjavascript}{\href{https://developer.mozilla.org/en-US/docs/Web/JavaScript}{JavaScript}}
\newcommand{\rfreact}{\href{https://reactjs.org/}{React}}
\newcommand{\rfphp}{\href{https://www.php.net/manual/en/index.php}{PHP}}
\newcommand{\rfpython}{\href{https://www.python.org/}{Python}}
\newcommand{\rfrlang}{\href{https://www.r-project.org/}{R}}
\newcommand{\rfcsharp}{\href{https://docs.microsoft.com/en-us/dotnet/csharp/}{C\#}}
\newcommand{\rfcpp}{\href{https://isocpp.org/}{C/C++}}
\newcommand{\rfclang}{\href{https://en.wikipedia.org/wiki/C_(programming_language)}{C}}
\newcommand{\rfhaskell}{\href{https://www.haskell.org/}{Haskell}}
\newcommand{\rffortran}{\href{https://en.wikipedia.org/wiki/Fortran}{Fortran 95}}
\newcommand{\rfcypress}{\href{https://www.cypress.io/}{Cypress}}
\newcommand{\rfnodejs}{\href{https://nodejs.org/}{Node.js}}
\newcommand{\rfhtml}{\href{https://developer.mozilla.org/en-US/docs/Web/HTML}{HTML}}
\newcommand{\rfcss}{\href{https://developer.mozilla.org/en-US/docs/Web/CSS}{CSS}}
% DB
\newcommand{\rfredis}{\href{https://neo4j.com/}{Redis}}
\newcommand{\rfneofj}{\href{https://neo4j.com/}{Neo4j}}
\newcommand{\rfmongodb}{\href{https://www.mongodb.com/}{MongoDB}}
\newcommand{\rfmysql}{\href{https://www.mysql.com/}{MySQL}}
\newcommand{\rfelastic}{\href{https://www.elastic.co/}{Elasticsearch}}
% Tools
\newcommand{\rfansible}{\href{https://www.ansible.com/}{Ansible}}
\newcommand{\rfterraform}{\href{https://www.terraform.io/}{Terraform}}
\newcommand{\rfdocker}{\href{https://www.docker.com/}{Docker}}
\newcommand{\rfnginx}{\href{https://www.nginx.com/}{NGINX}}
% Services
\newcommand{\rfaws}{\href{https://aws.amazon.com/}{AWS}}
\newcommand{\rfnewrelic}{\href{https://newrelic.com}{New Relic}}
\newcommand{\rfsumologic}{\href{https://www.sumologic.com/}{Sumo Logic}}
\newcommand{\rfjenkins}{\href{https://www.jenkins.io/}{Jenkins}}


% Other
%
% tg=tag
\newcommand{\tgproject}[1]{[Project]{#1}:}
\newcommand{\tgsubitem}{\\- }
\newcommand{\tgsubitemlabel}[1]{\\- {#1}:}
\newcommand{\tgskills}{\tgsubitemlabel{{\bf skills}}}
\newcommand{\keyword}[1]{{\it #1}}
\newcommand{\mynotes}[1]{\iffalse #1 \fi}

%%%%%%%%%%%%%%%%%%%% END MY COMMANDS %%%%%%%%%%%%%%%%%%%%
