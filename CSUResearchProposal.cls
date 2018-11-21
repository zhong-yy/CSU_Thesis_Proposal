\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CSUResearchProposal}[11/21/2018 CSU Research Proposal.]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  中南大学开题报告模板
%  钟乙源
%
%  修改自张臻的西北工业大学开题报告模板 NPUResearchProposal.cls(https://github.com/zzhang1987/NPUResearchProposal)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax
\LoadClass[a4paper,12pt]{article}
\RequirePackage[zihao=5,scheme=chinese,fontset=fandol,heading]{ctex}


\RequirePackage{fontspec}
\RequirePackage{indentfirst}
\RequirePackage{mathptmx}

\ctexset{
	section={
		format=\mdseries\zihao{5}\heiti,
		aftername={、},
		number=\chinese{section},
		beforeskip=0.5ex,
		afterskip=0.5ex,
	}
}
\ctexset{
	subsection={
		format=\bfseries\songti \zihao{5} ,
		beforeskip=0.5ex,
		afterskip=0.5ex,
	}
}

\ctexset{
	bibname = {}
}


\setmainfont{Times New Roman}

\RequirePackage{caption}
\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\DeclareCaptionFont{figurefont}{\heiti\zihao{5}}
\captionsetup[figure]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font=figurefont,%黑体五号
	position=bottom, % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
	%	belowskip=0.5ex,
}


\RequirePackage{xunicode}% provides unicode character macros
\RequirePackage{xltxtra} % provides some fixes/extras
\RequirePackage{fancyhdr}
\RequirePackage{fancybox}

\RequirePackage{setspace}
\RequirePackage{ifthen,epsfig,graphicx}
\RequirePackage{color}
\RequirePackage{etoolbox}
%\RequirePackage{epstopdf}

\RequirePackage{ulem}



\RequirePackage{array}
\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}m{#1}}
\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}m{#1}}
\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}m{#1}}

\newcommand{\@stunumber}{?}
\newcommand{\stunumber}[1]{\renewcommand{\@stunumber}{#1}}
\newcommand{\@School}{?}
\newcommand{\School}[1]{\renewcommand{\@School}{#1}}
\newcommand{\@Major}{?}
\newcommand{\Major}[1]{\renewcommand{\@Major}{#1}}

\newcommand{\@Degree}{?}
\newcommand{\Degree}[1]{\renewcommand{\@Degree}{#1}}

\newcommand{\@StudentID}{?}
\newcommand{\StudentID}[1]{\renewcommand{\@StudentID}{#1}}

\newcommand{\@ThesisTitle}{?}
\newcommand{\ThesisTitle}[1]{\renewcommand{\@ThesisTitle}{#1}}

\newcommand{\@Supervisor}{?}
\newcommand{\Supervisor}[1]{\renewcommand{\@Supervisor}{#1}}

\newcommand{\@ReviewerOneName}{?}
\newcommand{\@ReviewerOneTitle}{?}
\newcommand{\@ReviewerOneInstitute}{?}
\newcommand{\ReviewerOne}[3]{\renewcommand{\@ReviewerOneName}{#1} \renewcommand{\@ReviewerOneTitle}{#2} \renewcommand{\@ReviewerOneInstitute}{#3}}

\newcommand{\@ReviewerTwoName}{?}
\newcommand{\@ReviewerTwoTitle}{?}
\newcommand{\@ReviewerTwoInstitute}{?}
\newcommand{\ReviewerTwo}[3]{\renewcommand{\@ReviewerTwoName}{#1} \renewcommand{\@ReviewerTwoTitle}{#2} \renewcommand{\@ReviewerTwoInstitute}{#3}}

\newcommand{\@ReviewerThreeName}{?}
\newcommand{\@ReviewerThreeTitle}{?}
\newcommand{\@ReviewerThreeInstitute}{?}
\newcommand{\ReviewerThree}[3]{\renewcommand{\@ReviewerThreeName}{#1} \renewcommand{\@ReviewerThreeTitle}{#2} \renewcommand{\@ReviewerThreeInstitute}{#3}}

\newcommand{\@ReviewerFourName}{?}
\newcommand{\@ReviewerFourTitle}{?}
\newcommand{\@ReviewerFourInstitute}{?}
\newcommand{\ReviewerFour}[3]{\renewcommand{\@ReviewerFourName}{#1} \renewcommand{\@ReviewerFourTitle}{#2} \renewcommand{\@ReviewerFourInstitute}{#3}}

\newcommand{\@ReviewerFiveName}{?}
\newcommand{\@ReviewerFiveTitle}{?}
\newcommand{\@ReviewerFiveInstitute}{?}
\newcommand{\ReviewerFive}[3]{\renewcommand{\@ReviewerFiveName}{#1} \renewcommand{\@ReviewerFiveTitle}{#2} \renewcommand{\@ReviewerFiveInstitute}{#3}}

\newcommand{\@ReviewerSixName}{?}
\newcommand{\@ReviewerSixTitle}{?}
\newcommand{\@ReviewerSixInstitute}{?}
\newcommand{\ReviewerSix}[3]{\renewcommand{\@ReviewerSixName}{#1} \renewcommand{\@ReviewerSixTitle}{#2} \renewcommand{\@ReviewerSixInstitute}{#3}}

\newcommand{\@SecretaryName}{?}
\newcommand{\@SecretaryTitle}{?}
\newcommand{\@SecretaryInstitute}{?}
\newcommand{\Secretary}[3]{\renewcommand{\@SecretaryName}{#1} \renewcommand{\@SecretaryTitle}{#2} \renewcommand{\@SecretaryInstitute}{#3}}

\newcommand{\@SubjectFrom}{?}
\newcommand{\SubjectFrom}[1]{\renewcommand{\@SubjectFrom}{#1}}

\newcommand{\@Classification}{?}
\newcommand{\Classification}[1]{\renewcommand{\@Classification}{#1}}
\newcommand{\@Date}{?}
\newcommand{\Date}[1]{\renewcommand{\@Date}{#1}}

\setlength{\parindent}{2em}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{hyperref}
\hypersetup{
	colorlinks=true,
	%menucolor=\color{violet},
	citecolor=blue,
	%urlcolor=blue,
	linkcolor=OrangeRed,
	%  breaklinks=true,
}

\RequirePackage{lipsum}

\renewcommand{\maketitle}{%
  \thispagestyle{empty}
  \clearpage
  \noindent{\leftline{}}\\
  \vspace{3em}\\
  
  \noindent{\centerline{ \songti \zihao{1} \textbf{中~南~大~学}}}\\~\\
  \noindent{\centerline{ \songti \zihao{1} \textbf{研究生学位论文开题报告}}}\\
  
  \vspace{8em}
\begin{center}
		\zihao{-4}
		\linespread{1.25}\selectfont
        \begin{tabular}{>{}p{2.6cm} >{}p{6.5cm}}
        {{\makebox[75pt][s]{姓名：}}} &\@author\\\cline{2-2}\\[-1.8ex]
{{\makebox[75pt][s]{学号：}}}&\@StudentID\\\cline{2-2}\\[-1.8ex]

{{\makebox[75pt][s]{论文题目：}}}&{\@ThesisTitle}\\\cline{2-2}\\[-1.8ex]

{{\makebox[75pt][s]{课题来源：}}}&\@SubjectFrom\\\cline{2-2}\\[-1.8ex]

{{\makebox[75pt][s]{攻读学位：}}}&\@Degree\\\cline{2-2}\\[-1.8ex]
{{\makebox[75pt][s]{指导教师：}}} &\@Supervisor\\\cline{2-2}\\[-1.8ex]
{{\makebox[75pt][s]{学科专业：}}} & \@Major\\\cline{2-2}\\[-1.8ex]
{{\makebox[75pt][s]{二级单位：}}} & \@School\\\cline{2-2}\\[-1.8ex]
{{\makebox[75pt][s]{填表日期：}}} & \@Date\\\cline{2-2}\\[-1.8ex]
        \end{tabular}
    \\
    \vspace{25mm}
    {\songti \bfseries\zihao{3}{中南大学研究生院制}}
\end{center}
  \clearpage
  \setcounter{page}{1}%
  \fancypagestyle{firststyle}
{
	\fancyhead{}
	\fancyfoot[RO]{}
	\fancyfoot[LE]{}
	\fancyfoot[C]{-\thepage-}
	\renewcommand{\headrulewidth}{0pt} %页眉横线宽度===========
}
\thispagestyle{firststyle}
%\thisfancy
\clearpage
\pagestyle{fancy}
\fancyhead{}
\fancyfoot[RO]{}
\fancyfoot[LE]{}
\fancyfoot[C]{-\thepage-}
\renewcommand{\headrulewidth}{0pt} %页眉横线宽度===========

%\renewcommand{\headsep}{5pt}
%\renewcommand{\footskip}{10pt}
\fancypage{%
	\setlength{\fboxsep}{8pt}%
	\setlength{\fboxrule}{0.8pt}%
	\setlength{\shadowsize}{0pt}%
	\shadowbox}{}

}



\ifthenelse{\boolean{@titlepage}}{%
  \let\@ldabstract=\abstract
  \let\@ldendabstract=\endabstract
  \renewenvironment{abstract}{%
    \@ldabstract
    \setcounter{page}{0}%
  }{
    \par
    \@keywords
    \vfill
    \begin{center}
      \@lab
    \end{center}
    \vfill
    \@ldendabstract
    \setcounter{page}{1}%
  }%
}{}


\AtEndDocument{%
  \clearpage
  \begin{picture}(100,100)(0,0)
	\put(-24,85){\zihao{5} \heiti 八、指导教师意见}
    \put(140,-15){{指导教师签字：}}
	\put(300,-15){日期：}
	
	\put(-24,-39){\zihao{5} \heiti 九、专家评审意见}
	\put(-22,-70){\zihao{5} \bfseries 评审小组成员}
	\put(78,-70){\zihao{5} \bfseries 姓名}
	\put(170,-70){\zihao{5} \bfseries 职称}
	\put(278,-70){\zihao{5} \bfseries 工作单位}
	\put(388,-70){\zihao{5} \bfseries 本人签名}				
	
	\put(-2,-100){\zihao{5} \bfseries 组长}
	\put(71,-100){\zihao{5} \bfseries \@ReviewerOneName}
	\put(170,-100){\zihao{5} \bfseries \@ReviewerOneTitle}
	\put(235,-100){\zihao{5} \bfseries \@ReviewerOneInstitute}
	
	\put(71,-130){\zihao{5} \bfseries \@ReviewerTwoName}
	\put(170,-130){\zihao{5} \bfseries \@ReviewerTwoTitle}
	\put(235,-130){\zihao{5} \bfseries \@ReviewerTwoInstitute}

	\put(71,-160){\zihao{5} \bfseries \@ReviewerThreeName}
	\put(170,-160){\zihao{5} \bfseries \@ReviewerThreeTitle}
	\put(235,-160){\zihao{5} \bfseries \@ReviewerThreeInstitute}

	\put(71,-190){\zihao{5} \bfseries \@ReviewerFourName}
	\put(170,-190){\zihao{5} \bfseries \@ReviewerFourTitle}
	\put(235,-190){\zihao{5} \bfseries \@ReviewerFourInstitute}
	
	\put(71,-220){\zihao{5} \bfseries \@ReviewerFiveName}
	\put(170,-220){\zihao{5} \bfseries \@ReviewerFiveTitle}
	\put(235,-220){\zihao{5} \bfseries \@ReviewerFiveInstitute}	
	
	\put(71,-250){\zihao{5} \bfseries \@ReviewerSixName}
	\put(170,-250){\zihao{5} \bfseries \@ReviewerSixTitle}
	\put(235,-250){\zihao{5} \bfseries \@ReviewerSixInstitute}	

	\put(71,-310){\zihao{5} \bfseries \@SecretaryName}
	\put(170,-310){\zihao{5} \bfseries \@SecretaryTitle}
	\put(235,-310){\zihao{5} \bfseries \@SecretaryInstitute}
			
	\put(-2,-200){\zihao{5} \bfseries 成员}
	\put(-2,-308){\zihao{5} \bfseries 秘书}
	\put(-26,-333){\zihao{5} \bfseries 评审意见：}
	\put(-26,-460){\zihao{5} \bfseries 评定等级（分优秀、良好、合格、不合格四个等级）：\underline{\makebox[72pt]{\hfill}}。}	
	\put(105,-500){\zihao{5}评审小组组长签字：}
	\put(300,-500){\zihao{5}日期：}
	
	\put(-24,-517){\zihao{5} \heiti 十、所在二级单位意见}	
	\put(105,-580){\zihao{5}负责人签字：}	
	\put(265,-580){\zihao{5}（单位盖章）日期：}		    
    
    \put(-29.5,-20){\line(1,0){472.5}}
    
    \put(-29.5,-50){\line(1,0){472.5}}
    \put(-29.5,-80){\line(1,0){472.5}}
    \put(-29.5,-110){\line(1,0){472.5}}
    \put(47,-140){\line(1,0){395}}
    \put(47,-170){\line(1,0){395}}
    \put(47,-200){\line(1,0){395}}
    \put(47,-230){\line(1,0){395}}
    \put(47,-260){\line(1,0){395}} 
    \put(-29.5,-290){\line(1,0){472.5}}                     
    \put(-29.5,-320){\line(1,0){472.5}}
    
    \put(47,-50){\line(0,-1){270}}
    \put(137,-50){\line(0,-1){270}}
    \put(227,-50){\line(0,-1){270}}
    \put(367,-50){\line(0,-1){270}}            
    
    
    \put(-29.5,-505){\line(1,0){472.5}}
%    \put(30,-605.5){\line(0,1){714}}
  \end{picture}
}  % end of \AtEndDocument




