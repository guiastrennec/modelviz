#' QMD Examples
#'
#' @description A list of 6 \code{qmd_info} examples on the pharmacokinetic
#' models for nevirapine (\code{onecomp}), miltefosine (\code{twocomp}),
#' ciclosporin (\code{threecomp}), felodipine (\code{gitt}), bedaquiline (\code{metabolite}) and
#' theophylline (\code{pbpk}).
#'
#' @details
#' The \code{examples} file contains the following:
#' \itemize{
#' \item \code{examples$onecomp} nevirapine PK model \code{qmd_info}
#' \item \code{examples$twocomp} miltefosine PK model \code{qmd_info}
#' \item \code{examples$threecomp} ciclosporin PK model \code{qmd_info}
#' \item \code{examples$gitt} felodipine PK model \code{qmd_info}
#' \item \code{examples$metabolite} bedaquiline PK model \code{qmd_info}
#' \item \code{examples$pbpk} theophylline PBPK model \code{qmd_info}
#' }
#'
#' Each of these examples contain the following:
#' \itemize{
#'   \item descr model description
#'   \item theta theta typical values and RSE (\%) for fixed effects
#'   \item omega omega typical values (\%) and RSE (\%) for inter subject variability
#'   \item data individual model parameter read from a patab file
#'   \item advan nonmem ADVAN subroutine
#'   \item parsed_comp the parsed compartment information
#'   \item parsed_arrow the parsed arrow information
#' }
#'
#' @format A list of 6 levels: \code{onecomp}, \code{twocomp}, \code{threecomp},
#' \code{gitt} \code{metabolite} and \code{pbpk}.
#'
#' @source \href{http://www.ncbi.nlm.nih.gov/pubmed/18751690}{onecomp}: D. Elsherbiny et al.
#' Population pharmacokinetics of nevirapine in combination with rifampicin-based short
#' course chemotherapy in HIV- and tuberculosis-infected South African patients.
#' Eur J Clin Pharmacol. 65:71–80. (2009)
#'
#' @source \href{http://www.ncbi.nlm.nih.gov/pubmed/18519729}{twocomp}: T. Dorlo et al.
#' Pharmacokinetics of miltefosine in Old World cutaneous leishmaniasis patients.
#' Antimicrob. Agents Chemother. 52:8, 2855–2860. (2008)
#'
#' @source \href{http://www.ncbi.nlm.nih.gov/pubmed/17662086}{threecomp}: S. Fanta et al.
#' Developmental pharmacokinetics of ciclosporin – a population pharmacokinetic study
#' in paediatric renal transplant candidates. British Journal of Clinical Pharmacology.
#' 64:6, 772–784. (2007)
#'
#' @source \href{http://www.ncbi.nlm.nih.gov/pubmed/22286919}{gitt}: E. Hénin et al.
#' A mechanism-Based Approach for Absorption Modeling: The Gastro-Intestinal Transit Time
#' (GITT) Model. The AAPS Journal, 14:2, 155-163. (2012)
#'
#' @source \href{http://www.ncbi.nlm.nih.gov/pubmed/23571542}{metabolite}: E. Svensson et al.
#' Model-Based Estimates of the Effects of Efavirenz on Bedaquiline Pharmacokinetics and
#' Suggested Dose Adjustments for Patients Coinfected with HIV and Tuberculosis.
#' Antimicrobial Agents and Chemotherapy, 57:6, 2780-2787. (2013)
#'
#' @source \href{http://www.ncbi.nlm.nih.gov/pubmed/15948934}{pbpk}: S. Björkman.
#' Prediction of drug disposition in infants and children by means of physiologically based
#' pharmacokinetic (PBPK) modelling: theophylline and midazolam as model drugs. British Journal
#' of Clinical Pharmacology. 59:6, 691–704. (2004)
#'
#' @examples
#' \dontrun{
#' # One-compartment model
#' qmd(examples$onecomp)
#'
#' # Two-compartment model
#' qmd(examples$twocomp)
#'
#' # Three-compartment model
#' qmd(examples$threecomp)
#'
#' # GITT model
#' qmd(examples$gitt, rank = c(1,2,2,2,2,2,3,4,5,5))
#'
#' # Metabolite
#' qmd(examples$metabolite, rank = c(1,2,3,4,5,6,7,7,6,7,6,7))
#'
#' # PBPK model
#' qmd(examples$pbpk, pbpk_layout = TRUE)
#' }
#'
#' @name examples
NULL
