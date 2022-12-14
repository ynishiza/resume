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

\usepackage{enumitem}
\usepackage{etaremune}
\usepackage{amsmath}

%% Formatting
% colors
%  xcolor: https://ftp.yz.yamagata-u.ac.jp/pub/CTAN/macros/latex/contrib/xcolor/xcolor.pdf
\usepackage[colorlinks = true, linkcolor = gray, urlcolor = gray, citecolor = gray, anchorcolor = gray]{hyperref}

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
\newcommand{\homepage}[1]{\href{#1}{homepage:\ #1}}
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
\newcommand{\rfgithub}{\href{htts://github.com}{github}}
\newcommand{\rfmercurial}{\href{https://www.mercurial-scm.org/}{Mercurial}}
\newcommand{\rfbitbucket}{\href{https://bitbucket.org/product}{BitBucket}}
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
\newcommand{\rfdthree}{\href{https://d3js.org/}{D3}}
% DB
\newcommand{\rfredis}{\href{https://redis.io/}{Redis}}
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
\newcommand{\rffirefox}{\href{https://www.mozilla.org/en-US/firefox/}{Firefox}}


% Other
%
% tg=tag
\newcommand{\tgproject}[1]{{\bf Project} #1:}
\newcommand{\tgsubitem}{\\ $-$ }
\newcommand{\tgsubitemlabel}[1]{\tgsubitem #1: }
\newcommand{\tgskills}{\\{\bf skills} }
\newcommand{\keyword}[1]{{\it #1}}
\newcommand{\mynotes}[1]{\iffalse #1 \fi}

%%%%%%%%%%%%%%%%%%%% END MY COMMANDS %%%%%%%%%%%%%%%%%%%%
