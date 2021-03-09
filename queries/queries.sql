CREATE OR REPLACE VIEW afu_vsadssmini2020.v_vsadssmini_leitung 
AS 
SELECT 
	leitung.*,
	organisation.bezeichnung AS organisation_bezeichnung,
	organisation.organisationstyp
FROM 
	afu_vsadssmini2020.vsadssmini_leitung AS leitung
	LEFT JOIN afu_vsadssmini2020.administration_organisation AS organisation
	ON leitung.eigentuemerref = organisation.t_id 
;

-- L_SA_LE
CREATE TABLE IF NOT EXISTS afu_vsadssmini2020.t_leitung_sa_le AS
SELECT 
	*
FROM 
	afu_vsadssmini2020.v_vsadssmini_leitung 
WHERE 
(
 	nutzungsart_ist LIKE 'Schmutzabwasser' OR nutzungsart_ist LIKE 'Industrieabwasser'
) 
AND 
	organisationstyp LIKE 'Privat' 
AND 
(
 	funktionhierarchisch LIKE 'SAA.Liegenschaftsentwaesserung' OR funktionhierarchisch LIKE 'PAA.Liegenschaftsentwaesserung'
) 
AND 
 	funktionhydraulisch NOT LIKE 'Drainagetransportleitung' 
AND 
 	funktionhydraulisch NOT LIKE 'Sickerleitung'
;

-- L_RA_LE
CREATE TABLE IF NOT EXISTS afu_vsadssmini2020.t_leitung_ra_le AS
SELECT 
	*
FROM 
	afu_vsadssmini2020.v_vsadssmini_leitung 
WHERE 
(
	nutzungsart_ist LIKE 'Regenabwasser' OR nutzungsart_ist LIKE 'Reinabwasser' OR nutzungsart_ist LIKE 'Bachwasser' OR nutzungsart_ist LIKE 'Niederschlagsabwasser'
) 
AND 
	organisationstyp LIKE 'Privat' 
AND 
(
	funktionhierarchisch LIKE 'SAA.Liegenschaftsentwaesserung' OR funktionhierarchisch LIKE 'PAA.Liegenschaftsentwaesserung'
) 
AND 
	funktionhydraulisch NOT LIKE 'Drainagetransportleitung' 
AND 
	funktionhydraulisch NOT LIKE 'Sickerleitung'
;

-- L_MA_LE
CREATE TABLE IF NOT EXISTS afu_vsadssmini2020.t_leitung_ma_le AS
SELECT 
	*
FROM 
	afu_vsadssmini2020.v_vsadssmini_leitung 
WHERE
	nutzungsart_ist LIKE 'Mischabwasser' 
AND 
	organisationstyp LIKE 'Privat' 
AND 
(
	funktionhierarchisch LIKE 'SAA.Liegenschaftsentwaesserung' OR funktionhierarchisch LIKE 'PAA.Liegenschaftsentwaesserung'
) 
AND 
	funktionhydraulisch NOT LIKE 'Drainagetransportleitung' 
AND 
	funktionhydraulisch NOT LIKE 'Sickerleitung'
;
 	

-- L_Drainage
CREATE TABLE IF NOT EXISTS afu_vsadssmini2020.t_leitung_drainage AS
SELECT 
	*
FROM 
	afu_vsadssmini2020.v_vsadssmini_leitung 
WHERE 
	funktionhierarchisch LIKE 'SAA%' 
AND 
(
	funktionhydraulisch LIKE 'Drainagetransportleitung' OR funktionhydraulisch LIKE 'Sickerleitung'
)
;

-- L_SA_dr
CREATE TABLE IF NOT EXISTS afu_vsadssmini2020.t_leitung_sa_dr AS
SELECT 
	*
FROM 
	afu_vsadssmini2020.v_vsadssmini_leitung 
WHERE 
(
	nutzungsart_ist LIKE 'Schmutzabwasser' OR nutzungsart_ist LIKE 'Industrieabwasser'
) 
AND 
	funktionhierarchisch LIKE 'SAA%' 
AND 
(
	organisationstyp NOT LIKE 'Privat' 
	AND
	(
		funktionhierarchisch NOT LIKE 'SAA.Liegenschaftsentwaesserung' OR funktionhierarchisch NOT LIKE 'PAA.Liegenschaftsentwaesserung'
	)
) 
AND 
	funktionhydraulisch NOT LIKE 'Drainagetransportleitung' 
AND 
	funktionhydraulisch NOT LIKE 'Sickerleitung'
;

-- L_RA_dr
CREATE TABLE IF NOT EXISTS afu_vsadssmini2020.t_leitung_ra_dr AS
SELECT 
	*
FROM 
	afu_vsadssmini2020.v_vsadssmini_leitung 
WHERE 
(
	nutzungsart_ist LIKE 'Regenabwasser' OR nutzungsart_ist LIKE 'Reinabwasser' OR nutzungsart_ist LIKE 'Bachwasser' OR nutzungsart_ist LIKE 'Niederschlagsabwasser'
) 
AND 
	funktionhierarchisch LIKE 'SAA%' 
AND 
(
	organisationstyp NOT LIKE 'Privat' 
	AND
	(
		funktionhierarchisch NOT LIKE 'SAA.Liegenschaftsentwaesserung' OR funktionhierarchisch NOT LIKE 'PAA.Liegenschaftsentwaesserung'
	)
) 
AND 
	funktionhydraulisch NOT LIKE 'Drainagetransportleitung' 
AND 
	funktionhydraulisch NOT LIKE 'Sickerleitung'
;

-- L_MA_dr
CREATE TABLE IF NOT EXISTS afu_vsadssmini2020.t_leitung_ma_dr AS
SELECT 
	*
FROM 
	afu_vsadssmini2020.v_vsadssmini_leitung 
WHERE 
	nutzungsart_ist LIKE 'Mischabwasser' 
AND 
	funktionhierarchisch LIKE 'SAA%' 
AND 
(
	organisationstyp NOT LIKE 'Privat' 
	AND
	(
		funktionhierarchisch NOT LIKE 'SAA.Liegenschaftsentwaesserung' OR funktionhierarchisch NOT LIKE 'PAA.Liegenschaftsentwaesserung'
	)
) 
AND 
	funktionhydraulisch NOT LIKE 'Drainagetransportleitung' 
AND 
	funktionhydraulisch NOT LIKE 'Sickerleitung'
;

-- L_VK
CREATE TABLE IF NOT EXISTS afu_vsadssmini2020.t_leitung_vk AS
SELECT 
	*
FROM 
	afu_vsadssmini2020.v_vsadssmini_leitung 
WHERE 
	organisationstyp LIKE 'Abwasserverband'
;

-- L_eindol
CREATE TABLE IF NOT EXISTS afu_vsadssmini2020.t_leitung_eindol AS
SELECT 
	*
FROM 
	afu_vsadssmini2020.v_vsadssmini_leitung
WHERE
	nutzungsart_ist LIKE 'Bachwasser' 
AND 
	profiltyp NOT LIKE 'offenes_Profil'
;