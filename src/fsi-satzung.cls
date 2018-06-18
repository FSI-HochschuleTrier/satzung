\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fsi-satzung}[2018/06/01 Stzungsdokumentenklasse für die Fachschaft Informatik an der Hochschule Trier]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass[a4paper, 11pt]{article}
\RequirePackage[a4paper, top=15mm, left=30mm, right=25mm, bottom=15mm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{geometry}
\geometry{a4paper, top=25mm, left=35mm, right=25mm, bottom=25mm}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{epstopdf}
\RequirePackage[T1]{fontenc}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage[ngerman]{babel} %deutsche Silbentrennung
%\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{ifthen}
\RequirePackage{etoolbox}
% \RequirePackage{hyperref}
\RequirePackage{eurosym}

\definecolor{fsi}{RGB}{0,81,150}

\newcounter{paragraphcounter}
\preto{\subsection}{\stepcounter{paragraphcounter}}

\renewcommand\thesection{\Alph{section}}
\renewcommand{\thesubsection}{\S~\arabic{paragraphcounter}}

\newcommand{\Beschlussdatum}[1]{\def\dateofsignage{#1}}

\newenvironment{satzung}
{\document
	\doublespacing
	\thispagestyle{empty}

	\textcolor{fsi}{
		\hspace*{-35cm}
		\rule{64.9cm}{5pt}\\[\dimexpr-\baselineskip+3mm+2pt]
		\hspace*{-35cm}
		\rule{64.9cm}{2pt}
	}
	\vfill
	\begin{center}
		{\LARGE Satzung der}\\
		\vspace{5mm}
		{\Huge \textbf{Fachschaft Informatik}}\\
		\vspace{5mm}
		{\Large Hochschule Trier}
	\end{center}
	\vfill
	\begin{center}	
		\includegraphics[width=0.35\textwidth]{assets/logo_faculty_computer_science.eps}
		\vfill
		

	\end{center}
	\vfill
	\begin{center}
		\textit{
			Diese Satzung wurde am \dateofsignage~von den Mitgliedern der Vollversammlung der Fachschaft Informatik beschlossen.
		}
	\end{center}
	\textcolor{fsi}{
		\hspace*{-35cm}
		\rule{64.9cm}{2pt}\\[\dimexpr-\baselineskip+3mm+5pt]
		\hspace*{-35cm}
		\rule{64.9cm}{5pt}
	}
	\vspace{10mm}
	\pagebreak
	
	\setcounter{tocdepth}{2}
	\tableofcontents
	\pagebreak
	% ----- ENDE DECKBLATT -----
}{\enddocument}