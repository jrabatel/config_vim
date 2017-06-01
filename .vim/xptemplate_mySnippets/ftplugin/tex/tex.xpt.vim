XPTemplate priority=personal mark=`~

let s:f = g:XPTfuncs()

XPTvar $TRUE          1
XPTvar $FALSE         0
XPTvar $NULL          NULL
XPTvar $UNDEFINED     NULL
XPTvar $VOID_LINE     /* void */;
XPTvar $BRif \n

XPTinclude
      \ _common/common
      \ _common/personal


" ========================= Function and Variables =============================


" ================================= Snippets ===================================


XPT eq " \\begin{equation} .. \\end{equation}
\begin{equation}
\label{eqn:`label~}
`cursor~
\end{equation}
..XPT

XPT info " title author date
\title{`title~}
\author{`$author~}
\date{\date}
\maketitle
..XPT

XPT doc " begin{document} .. end{document}
\begin{document}
    `cursor~
\end{document}
..XPT

XPT abstract " begin{abstract} .. end{abstract}
\begin{abstract}
    `cursor~
\end{abstract}
..XPT

XPT array " begin{array}{..}... end{array}
\begin{array}{`kind~rcl~}
`what~` `...0~ & `what~` `...0~ \\\\` `...1~
`what~` `...2~ & `what~` `...2~ \\\\` `...1~
\end{array}
..XPT

XPT table " begin{tabular}{..}... end{tabular}
XSET hline..|post=\hline
XSET what*|post=ExpandIfNotEmpty( ' & ', 'what*' )
\begin{tabular}{`kind~|r|c|l|~}
`hline..~
`what*~ \\\\` `...1~
`hline..~
`what*~ \\\\` `...1~
\end{tabular}

..XPT

""""""""""""""""""""""""""""""""""""""""""""
" Document organization

XPT se " section{..}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{`sectionTitle~}\label{sec:`label~}

`cursor~
..XPT

XPT ss " subsection{..}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsection{`sectionTitle~}
`cursor~
..XPT

XPT sss " subsubsection{..}
\subsubsection{`sectionTitle~}
`cursor~
..XPT

XPT par " paragraph{..}
\paragraph{`paragraphTitle~} `cursor~
..XPT

XPT spar " subparagraph{..}
\subparagraph{`title~} `cursor~
..XPT

""""""""""""""""""""""""""""""""""""""""""""
" Formatting

XPT tbf " \textbf{..}
\textbf{`text~}`cursor~
..XPT

XPT " " ``...''
```text~''`cursor~
..XPT

XPT tit " \textit{..}
\textit{`text~}`cursor~
..XPT

XPT ttt " \texttt{..}
\texttt{`text~}`cursor~
..XPT

XPT tsc " \textsc{..}
\textsc{`text~}`cursor~
..XPT

XPT tbf_ wraponly=wrapped " \textbf{..}
\textbf{`wrapped~}`cursor~
..XPT

XPT tit_ wraponly=wrapped " \textit{..}
\textit{`wrapped~}`cursor~
..XPT

XPT ttt_ wraponly=wrapped " \texttt{..}
\texttt{`wrapped~}`cursor~
..XPT

XPT tsc_ wraponly=wrapped " \textsc{..}
\textsc{`wrapped~}`cursor~
..XPT

XPT "_ wraponly=wrapped " ``...''
      ```wrapped~''`cursor~
      \ ~
..XPT

XPT mcal "\mathcal{..}
\mathcal{`X~}`cursor~
..XPT

XPT $mcal "$ \mathcal{..} $
$\mathcal{`X~}$`cursor~
..XPT

XPT cinred " \inred{...}
\inred{`text~}`cursor~
..XPT
XPT cinred_ wraponly=wrapped " \inred{...}
\inred{`wrapped~}`cursor~
..XPT

" colors (require the definition of corresponding commands)
XPT cinblueg " \inblueg{...}
\inblueg{`text~}`cursor~
..XPT
XPT cinblueg_ wraponly=wrapped " \inblueg{...}
\inblueg{`wrapped~}`cursor~
..XPT

XPT cinbor " \inbor{...}
\inbor{`text~}`cursor~
..XPT
XPT cinbor_ wraponly=wrapped " \inbor{...}
\inbor{`wrapped~}`cursor~
..XPT

XPT cingreen " \ingreen{...}
\ingreen{`text~}`cursor~
..XPT
XPT cinmag_ wraponly=wrapped " \inmag{...}
\inmag{`wrapped~}`cursor~
..XPT


""""""""""""""""""""""""""""""""""""""""""""
" Useful environment for figures, tables, math mode

XPT graph " \includegraphics...
\includegraphics[width=`width~\textwidth]{img/`file~}
`cursor~
..XPT

XPT $_ wraponly=wrapped " $...$
$ `wrapped~ $`cursor~
..XPT


""""""""""""""""""""""""""""""""""""""""""""
" Arrows

XPT => " \Rightarrow
\Rightarrow`cursor~
..XPT

XPT <=> " \Leftrightarrow
\Leftrightarrow `cursor~
..XPT

XPT <= " \Lefttarrow
\Leftarrow`cursor~
..XPT

XPT -> " \rightarrow
\rightarrow`cursor~
..XPT

XPT <- " \lefttarrow
\leftarrow`cursor~
..XPT

XPT $=> " $\Rightarrow$
$\Rightarrow$`cursor~
..XPT

XPT $<= " $\Lefttarrow$
$\Leftarrow$`cursor~
..XPT

XPT $<=> " $\Leftrightarrow$
$\Leftrightarrow$ `cursor~
..XPT

XPT $-> " $\rightarrow$
$\rightarrow$`cursor~
..XPT

XPT $<- " $\lefttarrow$
$\leftarrow$`cursor~
..XPT

""""""""""""""""""""""""""""""""""""""""""""
" References to objects

"the following templates must be used with latex-suite!
\includegraphics[width=.8\textwidth]{img/predictions_points.png}
XPT Fig " Figure~\ref{fig:...}
Figure~\ref{fig:`label~}`cursor~
..XPT

XPT Tab " Table~\ref{tab:...}
Table~\ref{tab:`label~}`cursor~
..XPT

""""""""""""""""""""""""""""""""""""""""""""
" Beamer

XPT bfr " \begin{frame}{..} .. \end{frame}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{frame}{`title~}

`cursor~

\end{frame}

XPT bb " \begin{block}{..} .. \end{block}
\begin{block}{`title~}
`cursor~
\end{block}

XPT bab " \begin{alertblock}{..} .. \end{block}
\begin{alertblock}{`title~}
`cursor~
\end{alertblock}

XPT beb " \begin{exampleblock}{..} .. \end{block}
\begin{exampleblock}{`title~}
`cursor~
\end{exampleblock}

XPT bsecplan " \AtBeginSection
\AtBeginSection[]{
  \begin{frame}<beamer>
    \frametitle{Plan}
    \tableofcontents[currentsection]
  \end{frame}
}
..XPT

XPT minipage "\begin{minipage}... \end{minipage}
\begin{minipage}[c]{`0.45~\linewidth}
`left~
\end{minipage}\hfill
%
\begin{minipage}[c]{`0.45~\linewidth}
`right~
\end{minipage}
..XPT

XPT pause " \pause
\pause
..XPT

XPT input " \input{}
\input{`file~}`CURSOR~
..XPT

XPT // " \\
\\

..XPT

XPT / " \ (imposing empty line)

\
`cursor~
..XPT

XPT \ " \backslash
\backslash
..XPT

XPT x " \times
\times
..XPT

XPT { " \{
\{
..XPT

XPT } " \}
\}
..XPT

XPT in " \in
\in
..XPT

XPT frac " frac{..}{..}
\frac{`a~}{`b~}
..XPT

XPT dfrac " dfrac{..}{..}
\dfrac{`a~}{`b~}
..XPT

XPT lbl " label{..}
\label{`cursor~}
..XPT

XPT ref " ref{..}
\ref{`cursor~}
..XPT

XPT cite " cite{..}
\cite{`cursor~}
..XPT

XPT integral " int_..^..
\int_`begin~^`end~{`cursor~}
..XPT

XPT lim " lim_....
\lim_{`what~}
..XPT

XPT itm " begin{itemize} ... end{itemize}
\begin{itemize}
    \item `what~~`...~
    \item `what~~`...~
\end{itemize}
..XPT

XPT it " \item
\item `cursor~
..XPT

XPT enum " begin{enumerate} ... end{enumerate}
\begin{enumerate}
    \item `what~~`...~
    \item `what~~`...~
\end{enumerate}
..XPT

XPT desc " begin{description} ... end{description}
\begin{description}
    \item[`what~] `content~~`...~
    \item[`what~] `content~~`...~
\end{description}
..XPT

XPT sqrt " sqrt[..]{..}
\sqrt`n...{{~[`nth~]`}}~{`cursor~}
..XPT

XPT sum " sum{..}~..{}
\sum\limits_{`init~}^{`end~}`cursor~
..XPT

XPT slide " begin{slide} .. end{slide}
\begin{slide}
`cursor~
\end{slide}
..XPT

XPT class " documentclass[..]{..}
XSET kind=Choose(['article','book','report', 'letter','beamer','slides'])
\documentclass[`size~11~pt]{`kind~}
..XPT

XPT toc " \tableofcontents
\tableofcontents
..XPT

XPT beg " begin{..} .. end{..}
\begin{`something~}
`cursor~
\end{`something~}
..XPT

XPT columns " \begin{columns}...
\begin{columns}
    \begin{column}[l]{`size~5cm~}
    \end{column}`...~

    \begin{column}[l]{`size~5cm~}
    \end{column}`...~
    `cursor~
\end{columns}
..XPT

XPT enclose_ wraponly=wrapped " \begin{..} SEL \end{..}
\begin{`something~}
    `wrapped~
\end{`something~}

XPT as_ wraponly=wrapped " SEL{..}
\\`wrapped~{`cursor~}
..XPT

XPT with_ wraponly=wrapped " \\.. {SEL}
\\`cursor~{`wrapped~}
..XPT

""""""""""""""""""""""""""""""""""""""""""""
" Data mining specific snippets (depend on some user-defined commands that
" should be included in the main tex file).
" 
XPT seq " \seq{...}
\seq{`itemsets~}`cursor~
..XPT

XPT db " \db
\db`cursor~
..XPT

XPT ext " \ext{`context~}{`pattern~}
\ext{`context~}{`pattern~}`cursor~
..XPT

XPT supp " \supp{`context~}{`pattern~}
\supp{`context~}{`pattern~}`cursor~
..XPT

XPT freq " \freq{`context~}{`pattern~}
\freq{`context~}{`pattern~}`cursor~
..XPT

XPT gr " \growthrate{`pattern~}{`from~}{`to~}
\gr{`pattern~}{`from~}{`to~}`cursor~
..XPT


""""""""""""""""""""""""""""""""""""""""""""
" Various text snippets (should be put in a more general file?)
" By convention, this kind of snippets will start with '_'
XPT _incon " In consequence, 
In consequence, 
..XPT

XPT _asar " As a result, 
As a result, `cursor~ 
..XPT

XPT _asacons " As a consequence, 
As a consequence, `cursor~ 
..XPT

XPT _inord " In order to 
In order to `cursor~ 
..XPT

XPT _inadd " In addition, 
In addition, `cursor~ 
..XPT

" Propose a choice list for various connectors:

XPT ;addition " addition connectors
XSET kind=Choose(['In addition, ', 'Furthermore, ', 'Moreover, '])
`kind~
..XPT

XPT ;result " result connectors
XSET kind=Choose(['As a result, ', 'Consequently, ', 'In consequence, ', 'As a consequence, '])
`kind~
..XPT
