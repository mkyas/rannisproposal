\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rannisproposal}[2023/03/31 Rannis project proposal class]
\LoadClass[12pt,a4paper,oneside]{article}

\RequirePackage{iftex}

\DeclareOption{10pt}{\OptionNotUsed}
\DeclareOption{11pt}{\OptionNotUsed}
\DeclareOption{letterpaper}{\OptionNotUsed}
\DeclareOption{a5paper}{\OptionNotUsed}
\DeclareOption{b5paper}{\OptionNotUsed}
\DeclareOption{executivepaper}{\OptionNotUsed}
\DeclareOption{legalpaper}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{landscape}{\OptionNotUsed}
\DeclareOption{notitlepage}{\OptionNotUsed}
\DeclareOption{titlepage}{\OptionNotUsed}
\DeclareOption{openright}{\OptionNotUsed}
\DeclareOption{openany}{\OptionNotUsed}
\DeclareOption{twoside}{\OptionNotUsed}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\ifLuaTeX
\RequirePackage{fontspec}
\setsansfont{TeX Gyre Heros}
\setmonofont{TeX Gyre Cursor}
\RequirePackage{termes-otf}
\else
\PassOptionsToPackage{T1}{fontenc}
\RequirePackage{fontenc}
\RequirePackage{tgtermes}
\RequirePackage{tgheros}
\RequirePackage{tgcursor}
\fi

% Required spacing
\RequirePackage{setspace}
\spacing{1.5}
\normalsize

% Page layout
\RequirePackage[a4paper,left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm,footskip=2em]{geometry}

% Head and foot lines
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead[L]{\footnotesize The Icelandic Research Fund \theproposalyear\\
  Detailed project description}
\fancyhead[C]{}
\fancyhead[R]{\footnotesize \@author\\}
\fancyfoot[L]{\footnotesize Project Grant\\
  New proposal}
\fancyfoot[C]{}
\fancyfoot[R]{\footnotesize \@title\\
  Page {\thepage} of {\pageref{LastPage}}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.5pt}
\setlength{\headheight}{26pt}

% Section headings
\RequirePackage{xcolor}
\definecolor{Heading}{rgb}{0.329,0.541,0.718}

\RequirePackage{titlesec}
\renewcommand{\thesection}{\alph{section}}
\titleformat{\section}{\singlespacing\scshape\bfseries\color{Heading}}{\thesection.}{5pt}{}[\hrule]
\titleformat{\subsection}{\singlespacing\bfseries\color{Heading}}{\thesubsection.}{5pt}{}

% Graphics
\RequirePackage{graphicx}


% This will layout the title page.
\newcommand{\theproposalyear}{2024}
\newcommand{\proposalyear}[1]{\renewcommand{\theproposalyear}{#1}}

\renewcommand{\maketitle}{%
  \thispagestyle{empty}%
  \begingroup\spacing{1.125}
  \begin{center}
    \includegraphics[width=4.45cm]{rannsoknasjodur.png}
  \end{center}
  \vspace{0.5in}
  \begin{center}
    \Huge\bfseries\theproposalyear
  \end{center}
  \vspace{1in}
  {\color{Heading}\hrule height 2pt}
  \begin{center}
    \Large \bfseries \@author\\
%    (School of Computer Science, Reykjavik University)
  \end{center}
  \vspace{0.5in}
  \begin{center}
    \huge \bfseries\@title
  \end{center}
  \vspace{0.5in}
  \begin{center}
    \large\bfseries
    The Icelandic Research Fund \theproposalyear\\
    Project Grant\\
    Detailed project description
  \end{center}
  \vspace{.5in}
  \begin{center}
    \includegraphics[width=1.83cm]{rannis.png}
  \end{center}
  \vfill
  {\color{Heading}\hrule height 2pt}
  \endgroup
  \newpage
}
% Bibliography
\ifluatex
  \relax
\else
  \PassOptionsToPackage{utf8}{inputenc}
  \RequirePackage{inputenc}
\fi
\RequirePackage{csquotes}
\RequirePackage{doi}
\PassOptionsToPackage{hyphens}{url}
\RequirePackage{url}
\RequirePackage{hyperref}

%\let\@rigbibsection\bibsection
%\renewcommand{\bibsection}{\newpage\singlespacing\pagestyle{fancy}\@rigbibsection}

\endinput
