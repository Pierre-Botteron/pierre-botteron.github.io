% ! READ ME !

% En plus des commandes classiques, on a les suivantes :
% 	- l'ensemble des naturels : \N
%	- l'ensemble des relatifs : \Z
% 	- l'ensemble des rationnels : \Q
%	- l'ensemble des réels : \R
%	- l'ensemble des complexes : \C
%     - un corps : \K
%     - i.e. : \ie
%     - si, et seulement si, : \ssi

% En ajoutant une option entre crochets à ces fonctions, on peut donner un titre au paragraphe:
%	- remarque : \rem[option]{texte}
%	- proposition : \prop[option]{texte}
%	- théorème : \theo[option]{texte}
%	- lemme : \lem[option]{texte}
%	- corollaire : \cor[option]{texte}
%	- définition : \defi[option]{texte}   (désolé, LaTeX n'accepte pas que je mette que "def"...)
%	- démonstration : \demo[option]{texte}
%	- texte (cette fonction n'est la que pour régler les sauts de ligne quand ça bogue) : \texte[option]{texte}
%     - notation : \nota[option]{texte}
%     - exemple : \ex[option]{texte}
%     - rappel : \rap[option]{texte}
% et en mettant une étoile *, on mets au pluriel le mot du paragraphe (sauf pour \texte)
%	
%
%
%ATTENTION!!! Si on utilise la commande \index{...} pour créer un idex, il peut y avoir des pb si on l'écrit dans un environnement de type \defi{...}. Par exemple  \defi{\index{Corproduct $\coprod$}} ne marche pas, il faut alors indexer en dehors de la définition ou modifier légèrement de document .idx.







\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{Fiche_Class}[10/09/2019 Classe personnelle, V1.0]

\LoadClass[openright, twoside, 10pt]{article}




% PACKAGES
\RequirePackage{LobsterTwo} % police pour le titre du doc
\RequirePackage[T1]{fontenc} % police pour les titre de section, subsection...
\RequirePackage{bbold} % police pour les chapitres
\RequirePackage{lmodern} % pour revenir à une police normale

%\RequirePackage[latin1]{inputenc}    
%\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
%\selectlanguage{english}

%\DecimalMathComma % supprimer l'espace après la virgule pour les nombres décimaux


%\RequirePackage{biblatex} % améliorer les références à la fin

\RequirePackage{mathtools} % longue flèche
\RequirePackage{amsmath} % math
\RequirePackage{amsthm} % math
\RequirePackage{amssymb} % math
\RequirePackage{mathrsfs} % math

\RequirePackage{stmaryrd} % \mapsfrom

\RequirePackage[top=1.5cm, bottom=1.5cm, left=2.5cm, right=2.5cm]{geometry} % marges

\RequirePackage{soul} % soulignage

%\RequirePackage{stmaryrd} % intervalle d'entiers : \llbracket \rrbracket

\RequirePackage{enumitem} % enumerate
\setitemize{itemsep=-2pt} % rapprocher

%\RequirePackage{lipsum} % lorem ipsum, pour la mis en page

\RequirePackage{fancyhdr} % En tete
\pagestyle{fancy}	    % En tete

\RequirePackage{titlesec} % titre coloré
\RequirePackage{color} % texte coloré

\RequirePackage{ifmtarg} % Tester si une chaîne est vide
\RequirePackage{ifthen} % condition  : \ifthenelse{...}{...}{...}

\RequirePackage{framed} % presentation theorems

\RequirePackage{emptypage} % page vide avant les nouveaux chapitres

\RequirePackage{tikz-cd}  % diagrams

%\RequirePackage{xfrac}  % oblique fractions

\RequirePackage{pict2e} % faire des dessins

\RequirePackage{hyperref} % links in the PDF

%\RequirePackage{tocloft} % Pour modifier le sommaire
%\renewcommand{\cftsecfont}{\normalfont\sffamily}
%\renewcommand{\cftsubsecfont}{\normalfont\sffamily}

\RequirePackage{pgf,tikz} % dessins GeoGebra
%\RequirePackage{mathrsfs}
\usetikzlibrary{arrows}

\RequirePackage{graphicx} % images

\RequirePackage{caption} % mettre un titre sous les figures / tableaux
\DeclareCaptionLabelSeparator{line}{ --- }
\captionsetup[table]{labelfont=bf,textfont={}, labelsep=line}

%\RequirePackage{makeidx} % faire un index
%\makeindex


\hypersetup{   % modifier les liens dans le PDF
    pdftitle={Nonlocal Boxes and Communication Complexity},
    bookmarks=true,
    pdfpagemode=UseOutlines,
    pdfauthor={Pierre Botteron},
    linkbordercolor = [rgb]{1, 1, 1}, % gris clair = {0.95, 0.95, 0.95}
    filebordercolor = [rgb]{1, 1, 1},
    citebordercolor = [rgb]{1, 1, 1},
    menubordercolor = [rgb]{1, 1, 1},
    urlbordercolor = [rgb]{1, 1, 1}, 
    colorlinks = true,
    linkcolor = [rgb]{0, 0.2, 0.5},
%     anchorcolor = blue,
    citecolor = [rgb]{0, 0.35, 0},
%     filecolor = blue,
%     urlcolor = blue
}

% COMMANDES UTILES
\newcommand{\Top}{\textsl{\sffamily Top}}
\newcommand{\Toprel}{\textsl{\sffamily Top}_\textsl{\sffamily rel}}
\newcommand{\Gr}{\textsl{\sffamily Gr}}
\newcommand{\Set}{\textsl{\sffamily Set}}
\newcommand{\Ab}{\textsl{\sffamily Ab}}
\newcommand{\CW}{\textsl{\sffamily CW}}

\newcommand{\WLOG}{\textit{w.l.o.g. }}
\renewcommand{\iff}{\textit{if, and only if, }}
\newcommand{\eg}{\textit{e.g. }} % for example
\newcommand{\apriori}{\textit{a priori} }
\renewcommand{\st}{such that }

\setlength{\unitlength}{1cm}

\DeclareMathOperator{\im}{im}
\DeclareMathOperator\coker{coker}

\newlength{\LongueurFleche}
\setlength{\LongueurFleche}{1cm}


% COULEURS
\definecolor{Bleu}{rgb}{0.15, 0.35, 0.55} % création bleu (cadre Proposition, Lemme, ...)
\definecolor{Bleuc}{rgb}{0.89, 0.93, 0.999} % création bleu clair (cadre Proposition, Lemme, ...)
\definecolor{Grisc}{gray}{0.94} % création gris clair (cadre remarques)
\definecolor{Grisf}{gray}{0.6} % création gris foncé (cadre remarques)
\definecolor{BleuTitre}{rgb}{0.15, 0.35, 0.55} % création bleu (sections)
\definecolor{BleuTitrec}{rgb}{0.2, 0.5, 0.7} % création bleu clair (sous-sections)
\definecolor{BleuTitref}{rgb}{0.05, 0.2, 0.3} % création bleu ("Proposition", "Démonstration", ...)
\definecolor{Blanc}{gray}{1} % blanc
\definecolor{green2}{rgb}{0.13, 0.6, 0.33}
\definecolor{blue2}{rgb}{0.14, 0.44, 0.64}
\definecolor{red2}{rgb}{0.66, 0.20, 0.15}

% EN TETE
\fancyhead[L]{{$\mathscr Pierre$} \scshape{{$\mathscr B$}otteron}}
\fancyhead[R]{\scshape{MsD {$\mathcal T$}hesis}}

% ÉNUMÉRATIONS
\renewcommand{\labelenumi}{\scshape(\roman{enumi})}
%\renewcommand{\labelitemi}{$\rightarrow$}

% ENSEMBLES 
\newcommand{\N}{\mathbb N}
\newcommand{\Z}{\mathbb Z}
\newcommand{\Q}{\mathbb Q}
\newcommand{\R}{\mathbb R}
\newcommand{\C}{\mathbb C}
\newcommand{\K}{\mathbb K}

% ABRÉVIATIONS	
\newcommand{\ie}{\textit{i.e.}~}
\newcommand{\ssi}{si, et seulement si, }


% COMPETUR
\newcounter{prop}[section] % back to 0 when a new section begins
\setcounter{prop}{0}
\newcounter{pluriel} % savoir si le mot en début de paragraphe est au pluriel : 1 <=> oui, et 0 <=> non.
\setcounter{pluriel}{0}
\renewcommand{\theprop}{\Roman{section}.\arabic{prop}}

\newcounter{diagram}[section]
\renewcommand{\thediagram}{\Roman{section}.(\alph{diagram})}

% TITRES
\titleformat*{\section}{\vspace{0.5cm}\center\bfseries\LARGE\sffamily}
%\titleformat*{\subsection}{\bfseries\Large\sffamily}
\renewcommand{\thesection}{\textbf{\Roman{section}}.}
%\renewcommand{\thesubsection}{\Roman{section}.\arabic{subsection}.}
\renewcommand{\thesubsection}{\sffamily\Roman{section}.(\arabic{subsection})}
\titleformat{\subsection}[display] % shape
	{\bfseries\Large\sffamily} % format
	{} %label
	{-0.6cm} % horizontal separation
	{%\hspace{1cm} 
	\begin{center}\thesubsection \hspace{0.5cm}} % before code
	[\end{center}] % after code
\titleformat{\chapter}[display]{}{
	\setcounter{prop}{0}\large\center{--- \ \scshape Part~\thechapter ~---}}{10pt}{\bfseries\huge \center\sffamily}



\setlength\parindent{0pt} %no indent

\renewcommand{\thefootnote}{$|$\arabic{footnote}$|$}




% THEOREM STYLE
\newtheoremstyle{mystyle}% name of the style to be used
  {}% measure of space to leave above the theorem. E.g.: 3pt
  {}% measure of space to leave below the theorem. E.g.: 3pt
  {}% name of font to use in the body of the theorem
  {}% measure of space to indent
  {\bf\sffamily}% name of head font
  {.}% punctuation between head and body
  {0.3cm}% space after theorem head; " " = normal interword space
  {}% Manually specify head
%
%
\theoremstyle{mystyle}





	
	
	
% PROPOSITION
\newtheorem{proposition_small}[prop]{Proposition}
%
%\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{section}.\arabic{theorem}}

\newenvironment{proposition}
	{
	  \def\FrameCommand{{\vrule width 2pt}\hspace{10pt}}
                              \MakeFramed{\advance\hsize-\width \FrameRestore}
                              \kern-1ex
                     \begin{proposition_small}        
	}{
	\end{proposition_small}
	\endMakeFramed
	}

\newcommand{\prop}[2][]{ 
	\vspace{-0.1cm}
	\begin{proposition}[#1]
		\it{#2}
	\end{proposition}
	} 
	
% CONJECTURE
\newtheorem{conjecture_small}[prop]{Conjecture}
%
%\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{section}.\arabic{theorem}}

\newenvironment{conjecture}
	{
	  \def\FrameCommand{{\vrule width 2pt}\hspace{10pt}}
                              \MakeFramed{\advance\hsize-\width \FrameRestore}
                              \kern-1ex
                     \begin{conjecture_small}        
	}{
	\end{conjecture_small}
	\endMakeFramed
	}

\newcommand{\conj}[2][]{ 
	\vspace{-0.1cm}
	\begin{conjecture}[#1]
		\it{#2}
	\end{conjecture}
	} 
	
	
% THEOREME	
\newtheorem{theorem_small}[prop]{Theorem}
%
%\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{section}.\arabic{theorem}}

\newenvironment{theorem}
	{
	  \def\FrameCommand{{\vrule width 2pt}\hspace{2pt}}
                              \MakeFramed{\advance\hsize-\width \FrameRestore}
                              \kern-1.88ex
	  \def\FrameCommand{{\vrule width 2pt}\hspace{6pt}}
                              \MakeFramed{\advance\hsize-\width \FrameRestore}
                              \kern-1ex
                     \begin{theorem_small}        
	}{
	\end{theorem_small}
	\endMakeFramed
	\endMakeFramed
	%\hspace{-0.5cm}\vspace{-3cm}\rule{2cm}{2 pt}
	}

\newcommand{\theo}[2][]{ 
	\vspace{-0.3cm}
	\begin{theorem}[#1]
		\it{#2}
	\end{theorem}
	} 
	
% LEMME
\newtheorem{lemma}[prop]{Lemma}
	
\newcommand{\lem}[2][]{ 
	\vspace{-0.1cm}
	\begin{lemma}[#1]
		\it{#2}
	\end{lemma}
	} 
	
%\newcommand{\lem}{\@ifstar{\setcounter{pluriel}{1} \lembis}{\setcounter{pluriel}{0} \lembis}}
%\newcommand{\lembis}[2][]{
%	\refstepcounter{prop}
%	\noindent %\hspace{-0.15cm}
%	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
%		%\hspace*{0.4cm}
%		\textbf{\sffamily Lemma\ifthenelse{\thepluriel=1}{s}{} \theprop.\@ifmtarg{#1}{}{ #1.}}
%		{\it#2} 
%	%}}
%	\vspace{0.2cm}
%	} 
	
%% COROLLAIRE
%\newcommand{\cor}{\@ifstar{\setcounter{pluriel}{1} \corbis}{\setcounter{pluriel}{0} \corbis}}
%\newcommand{\corbis}[2][]{
%	\refstepcounter{prop}
%	\noindent %\hspace{-0.15cm}
%	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
%		%\hspace*{0.4cm}
%		\textbf{\sffamily Corollary\ifthenelse{\thepluriel=1}{s}{} \theprop. \@ifmtarg{#1}{}{#1.}}
%		{\scshape #2} 
%	%}}
%	\vspace{0.2cm}
%	} 
	
% COROLLAIRE
\newtheorem{corollaire}[prop]{Corollary}
%
%\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{section}.\arabic{theorem}}

\newenvironment{cor_env}
	{
	  \def\FrameCommand{{\vrule width 2pt}\hspace{10pt}}
                              \MakeFramed{\advance\hsize-\width \FrameRestore}
                              \kern-1ex
                     \begin{corollaire}        
	}{
	\end{corollaire}
	\endMakeFramed
	}

\newcommand{\cor}[2][]{
	\vspace{-0.5cm}
	\begin{cor_env}[#1]
		\textit{#2}
	\end{cor_env}
	} 

% DEFINITION
\newtheorem{definition}[prop]{Definition}
	
\newcommand{\defi}[2][]{ 
	\vspace{-0.1cm}
	\begin{definition}[#1]
		\it{#2}
	\end{definition}
	} 
	
	
% KEY IDEAS
\newtheorem*{keyidea}{Key Ideas}
	
\newcommand{\keyideas}[2][]{ 
	\vspace{-0.1cm}
	\begin{keyidea}[#1]
		\it{#2}
	\end{keyidea}
	} 
	
%\newcommand{\defi}{\@ifstar{\setcounter{pluriel}{1} \defibis}{\setcounter{pluriel}{0} \defibis}}
%\newcommand{\defibis}[2][]{
%	%\refstepcounter{prop}
%	\noindent %\hspace{-0.15cm}
%	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
%		%\hspace*{0.4cm}
%		\textbf{\sffamily Definition\ifthenelse{\thepluriel=1}{s}{}.\@ifmtarg{#1}{}{ #1.}}
%		\textit{#2}
%	%}}
%	\vspace{0.2cm}
%	} 
	
% DEMONSTRATION
\renewcommand{\proof}{\demo}
\newcommand{\demo}{\@ifstar{\setcounter{pluriel}{1} \demobis}{\setcounter{pluriel}{0} \demobis}}
\newcommand{\demobis}[2][]{
	\noindent %\hspace{-0.15cm}
	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
		%\hspace*{0.4cm}
		\textit{Proof\ifthenelse{\thepluriel=1}{s}{}.\@ifmtarg{#1}{}{ #1.}}
		#2
	%}}
	\vspace{0.2cm}
	}
	
% TEXTE
\newcommand{\texte}[2][]{
	\vspace{-0.1cm}
	\noindent
	%\hspace*{0.3cm}
	\@ifmtarg{#1}{}{\textbf{\sffamily #1.}\hspace{0.1cm}}\hspace{-0.1cm}
	#2
	\vspace{0.2cm}
	}
	
% NOTATION
\newtheorem{notation}[prop]{Notation}
	
\newcommand{\nota}[2][]{ 
	\vspace{-0.1cm}
	\begin{notation}[#1]
		\it{#2}
	\end{notation}
	} 
	
%\newcommand{\nota}{\@ifstar{\setcounter{pluriel}{1} \notabis}{\setcounter{pluriel}{0} \notabis}}
%\newcommand{\notabis}[2][]{
%	\refstepcounter{prop}
%	\noindent %\hspace{-0.15cm}
%	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
%		%\hspace*{0.4cm}
%		\textbf{\sffamily Notation\ifthenelse{\thepluriel=1}{s}{}.\@ifmtarg{#1}{}{ #1.}}
%		\textit{#2}
%	%}}
%	\vspace{0.2cm}
%	} 



	
% EXERCICE
\newtheorem{exercise}[prop]{Exercise}
	
\newcommand{\exo}[2][]{ 
	\vspace{-0.1cm}
	\begin{exercise}[#1]
		\it{#2}
	\end{exercise}
	} 

%\newcommand{\exo}{\@ifstar{\setcounter{pluriel}{1} \exobis}{\setcounter{pluriel}{0} \exobis}}
%\newcommand{\exobis}[2][]{ 
%	\refstepcounter{prop}
%	\noindent %\hspace{-0.15cm}
%	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
%		%\hspace*{0.4cm}
%		\textbf{\sffamily Exercise\ifthenelse{\thepluriel=1}{s}{}.\@ifmtarg{#1}{}{ #1.}}
%		{\scshape #2} 
%	%}}
%	\vspace{0.2cm}
%	} 

	
% ANSWER
%\newcommand{\ans}{\@ifstar{\setcounter{pluriel}{1} \ansbis}{\setcounter{pluriel}{0} \ansbis}}
%\newcommand{\ansbis}[2][]{
%	\noindent %\hspace{-0.15cm}
%	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
%		%\hspace*{0.4cm}
%		\textit{Answer\ifthenelse{\thepluriel=1}{s}{}.\@ifmtarg{#1}{}{ #1.}}
%		#2
%	%}}
%	\vspace{0.2cm}
%	} 


% PROBLEM
\newtheorem{problem}[prop]{Problem}
	
\newcommand{\prob}[2][]{ 
	\vspace{-0.1cm}
	\begin{problem}[#1]
		\it{#2}
	\end{problem}
	} 


	
	
% RAPPEL
\newtheorem{recall}[prop]{Recall}
	
\newcommand{\rec}[2][]{ 
	\vspace{-0.1cm}
	\begin{recall}[#1]
		\it{#2}
	\end{recall}
	} 
	
%\newcommand{\rap}{\@ifstar{\setcounter{pluriel}{1} \rapbis}{\setcounter{pluriel}{0} \rapbis}}
%\newcommand{\rapbis}[2][]{
%	\noindent %\hspace{-0.15cm}
%	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
%		%\hspace*{0.4cm}
%		\textbf{\sffamily Recall\ifthenelse{\thepluriel=1}{s}{}.\@ifmtarg{#1}{}{ #1.}}
%		#2
%	%}}
%	\vspace{0.2cm}
%	} 


% FIGURE
\newcommand{\fig}[3][]{
\begin{center}

	#2
	\nopagebreak
	\begin{quote}
	\begin{quote}
	\begin{quote}
		%\begin{center}
		\textit{\@ifmtarg{#1}{Figure}{#1}} \refstepcounter{diagram}{\thediagram} --- {\sffamily\footnotesize#3}
		%\end{center}
	\end{quote}
	\end{quote}
	\end{quote}

\end{center}
}


% EXEMPLE
\theoremstyle{remark}
\newtheorem{example}[prop]{Example}
	
\newcommand{\ex}[2][]{ 
	\vspace{-0.1cm}
	\begin{example}[#1]
		#2
	\end{example}
	} 
	
%\newcommand{\ex}{\@ifstar{\setcounter{pluriel}{1} \exbis}{\setcounter{pluriel}{0} \exbis}}
%\newcommand{\exbis}[2][]{
%	\noindent %\hspace{-0.15cm}
%	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
%		%\hspace*{0.4cm}
%		\textbf{\sffamily Example\ifthenelse{\thepluriel=1}{s}{}.\@ifmtarg{#1}{}{ #1.}}
%		#2
%	%}}
%	\vspace{0.2cm}
%	} 




% REMARQUE
%\theoremstyle{mystyle}    %   ajouter cette ligne pour avoir "Remark" en gras
\newtheorem{remark}[prop]{Remark}
	
\newcommand{\rem}[2][]{ 
	\vspace{-0.1cm}
	\begin{remark}[#1]
		#2
	\end{remark}
	} 
	
%\newcommand{\rem}{\@ifstar{\setcounter{pluriel}{1} \rembis}{\setcounter{pluriel}{0} \rembis}}
%\newcommand{\rembis}[2][]{
%	\refstepcounter{prop}
%	\noindent %\hspace{-0.15cm}
%	%\fcolorbox{Blanc}{Blanc}{\parbox{\linewidth}{
%		%\hspace*{0.4cm}
%		\textbf{\sffamily Remark\ifthenelse{\thepluriel=1}{s}{}.\@ifmtarg{#1}{}{ #1.}}
%		{#2}
%	%}}
%	\vspace{0.2cm}
%	} 


% CITATION

\newcommand{\newcitation}[2]{
\begin{flushright}
 \def\FrameCommand{\hspace{\textwidth-10cm-12pt}{\vrule width 2pt}\hspace{10pt}}
                              \MakeFramed{\advance\hsize-\width \FrameRestore}
                              \kern 0ex
	\parbox{10cm}{\guillemotleft~\textit{#1}~\guillemotright~#2}
\endMakeFramed
\end{flushright}
}


