% Language-independent variables.
CURRENT-YEAR = #(strftime "%Y" (localtime (current-time)))
COPYRIGHT-YEAR = #(format "~A-~A" COPYRIGHT-START-YEAR CURRENT-YEAR)
CURRENT-DATE = #(strftime "%Y-%m-%d" (localtime (current-time)))

% Copyright strings, separated by language.
% English
ms-copyright-cc-by-sa-four-en = "Licensed under CC BY-SA 4.0."
ms-copyright-pd-en = "Public domain."
ms-copyright-template-en = "© ~A. Typeset by ~A."
ms-copyright-template-en-license = "© ~A. Typeset by ~A. ~A"

% Japanese (Todo)
ms-copyright-cc-by-sa-four-jp = "Licensed under CC BY-SA 4.0."
ms-copyright-pd-jp = "Public domain."
ms-copyright-template-jp = "© ~A. Typeset by ~A."
ms-copyright-template-jp-license = "© ~A. Typeset by ~A. ~A"

% Standardized tagline.
ms-tagline-en = \markup {
  \fontsize #-3 #(format ms-copyright-template-en COPYRIGHT-YEAR AUTHORS)
}
ms-tagline-en-cc-by-sa-four = \markup {
  \fontsize #-3 #(format ms-copyright-template-en-license COPYRIGHT-YEAR AUTHORS ms-copyright-cc-by-sa-four-en)
}
ms-tagline-en-pd = \markup {
  \fontsize #-3 #(format ms-copyright-template-en-license COPYRIGHT-YEAR AUTHORS ms-copyright-pd-en)
}
ms-tagline-jp = \markup {
  \fontsize #-3 #(format ms-copyright-template-jp COPYRIGHT-YEAR AUTHORS)
}
ms-tagline-jp-cc-by-sa-four = \markup {
  \fontsize #-3 #(format ms-copyright-template-jp-license COPYRIGHT-YEAR AUTHORS ms-copyright-cc-by-sa-four-jp)
}
ms-tagline-jp-pd = \markup {
  \fontsize #-3 #(format ms-copyright-template-jp-license COPYRIGHT-YEAR AUTHORS ms-copyright-pd-jp)
}
