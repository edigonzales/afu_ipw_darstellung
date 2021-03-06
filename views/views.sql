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