<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" version="1.1.0" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <se:Name>v_vsadssmini_leitung</se:Name>
    <UserStyle>
      <se:Name>v_vsadssmini_leitung</se:Name>
      <se:FeatureTypeStyle>
        <se:Rule>
          <se:Name></se:Name>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#00ffb4</se:SvgParameter>
              <se:SvgParameter name="stroke-width">2</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>L_VK</se:Name>
          <se:Description>
            <se:Title>L_VK</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>organisationstyp</ogc:PropertyName>
              <ogc:Literal>Abwasserverband</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#e69800</se:SvgParameter>
              <se:SvgParameter name="stroke-width">6</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>L_eindol</se:Name>
          <se:Description>
            <se:Title>L_eindol</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>nutzungsart_ist</ogc:PropertyName>
                <ogc:Literal>Bachwasser</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsNotEqualTo>
                <ogc:PropertyName>profiltyp</ogc:PropertyName>
                <ogc:Literal>offenes_Profil</ogc:Literal>
              </ogc:PropertyIsNotEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#73b2ff</se:SvgParameter>
              <se:SvgParameter name="stroke-width">6</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">butt</se:SvgParameter>
              <se:SvgParameter name="stroke-dasharray">12 5</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>Regenwasser (L_RA_dr)</se:Name>
          <se:Description>
            <se:Title>Regenwasser (L_RA_dr)</se:Title>
          </se:Description>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:And>
                <ogc:And>
                  <ogc:And>
                    <ogc:Or>
                      <ogc:Or>
                        <ogc:Or>
                          <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nutzungsart_ist</ogc:PropertyName>
                            <ogc:Literal>Regenabwasser</ogc:Literal>
                          </ogc:PropertyIsEqualTo>
                          <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nutzungsart_ist</ogc:PropertyName>
                            <ogc:Literal>Reinabwasser</ogc:Literal>
                          </ogc:PropertyIsEqualTo>
                        </ogc:Or>
                        <ogc:PropertyIsEqualTo>
                          <ogc:PropertyName>nutzungsart_ist</ogc:PropertyName>
                          <ogc:Literal>Bachwasser</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                      </ogc:Or>
                      <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>nutzungsart_ist</ogc:PropertyName>
                        <ogc:Literal>Niederschlagsabwasser</ogc:Literal>
                      </ogc:PropertyIsEqualTo>
                    </ogc:Or>
                    <ogc:Or>
                      <ogc:PropertyIsLike escape="\" singleChar="_" wildCard="%">
                        <ogc:PropertyName>funktionhierarchisch</ogc:PropertyName>
                        <ogc:Literal>SAA%</ogc:Literal>
                      </ogc:PropertyIsLike>
                      <ogc:PropertyIsLike escape="\" singleChar="_" wildCard="%">
                        <ogc:PropertyName>funktionhierarchisch</ogc:PropertyName>
                        <ogc:Literal>PAA.Strassenentwaesserung</ogc:Literal>
                      </ogc:PropertyIsLike>
                    </ogc:Or>
                  </ogc:And>
                  <ogc:And>
                    <ogc:PropertyIsNotEqualTo>
                      <ogc:PropertyName>organisationstyp</ogc:PropertyName>
                      <ogc:Literal>Privat</ogc:Literal>
                    </ogc:PropertyIsNotEqualTo>
                    <ogc:Or>
                      <ogc:PropertyIsNotEqualTo>
                        <ogc:PropertyName>funktionhierarchisch</ogc:PropertyName>
                        <ogc:Literal>SAA.Liegenschaftsentwässerung</ogc:Literal>
                      </ogc:PropertyIsNotEqualTo>
                      <ogc:PropertyIsNotEqualTo>
                        <ogc:PropertyName>funktionhierarchisch</ogc:PropertyName>
                        <ogc:Literal>PAA.Liegenschaftsentwässerung</ogc:Literal>
                      </ogc:PropertyIsNotEqualTo>
                    </ogc:Or>
                  </ogc:And>
                </ogc:And>
                <ogc:PropertyIsNotEqualTo>
                  <ogc:PropertyName>funktionhydraulisch</ogc:PropertyName>
                  <ogc:Literal>Drainagetransportleitung</ogc:Literal>
                </ogc:PropertyIsNotEqualTo>
              </ogc:And>
              <ogc:PropertyIsNotEqualTo>
                <ogc:PropertyName>funktionhydraulisch</ogc:PropertyName>
                <ogc:Literal>Sickerleitung</ogc:Literal>
              </ogc:PropertyIsNotEqualTo>
            </ogc:And>
          </ogc:Filter>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#00c3ff</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
        <se:Rule>
          <se:Name>Schmutzwasser (L_SA_dr)</se:Name>
          <se:Description>
            <se:Title>Schmutzwasser (L_SA_dr)</se:Title>
          </se:Description>
          <se:LineSymbolizer>
            <se:Stroke>
              <se:SvgParameter name="stroke">#ff73df</se:SvgParameter>
              <se:SvgParameter name="stroke-width">1</se:SvgParameter>
              <se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter>
              <se:SvgParameter name="stroke-linecap">square</se:SvgParameter>
            </se:Stroke>
          </se:LineSymbolizer>
        </se:Rule>
      </se:FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
