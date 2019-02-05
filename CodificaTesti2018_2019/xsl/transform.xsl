<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>

<xsl:template match="tei:TEI">
	<html lang="it">
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        	<title>Codifica di Testi (2018-2019) - Davide I. Cucurnia e Alessandro Arena</title>
			<link href="css/style.css" rel="stylesheet" type="text/css" />
			<script src="js/jquerymin.js"></script>
			<script src="js/jquery.rwdImageMaps.js"></script>
        	<script src="js/script.js"></script>
        </head>
        <body>
            <nav>
           	    <table>
	                <tr>
	                    <td></td>
	                    <td>Codifica di Testi (2018-2019) - Davide I. Cucurnia e Alessandro Arena</td>
	                    <td> 
	                        <img src="img/menu.png" alt="menu" onclick="Menu()"/>
	                        <div id="tendina" onclick="Menu()">
	                        	<a href="7694_200.html">Cartolina 7694-200</a>
	                        	<a href="7694_222.html">Cartolina 7694-222</a>
	                        	<a href="7694_225.html">Cartolina 7694-225</a>
	                    	</div> 
                    	</td>
                	</tr>
            	</table>
           	</nav>
           	<main>
           	    <header>
	                <div id="generiche">
	                	<h1>Cartolina <xsl:value-of select="//tei:idno"/></h1>
	                	<h2>Vedi anche: </h2>
	                	<hr/>
	                    <xsl:for-each select="tei:teiHeader/tei:fileDesc">
	                	    <xsl:for-each select="tei:titleStmt/tei:respStmt">
	                		    <h4><xsl:value-of select="tei:resp"/></h4>
	                		    <xsl:for-each select="tei:name">
	                		    	<xsl:if test="position()>1">
	                				&#160;e&#160; 
	                        	    </xsl:if>
	                		    	<xsl:value-of select="."/>
	                		    </xsl:for-each>
								<br/>
	                	    </xsl:for-each>
	                    </xsl:for-each>
	                    <figure>
	                    	<img id="cartolina" src="#" alt="cartolina"/>
	                    <map name='7694_200R' id='7694_200R'>
    						<area alt="indirizzo" title="indirizzo" href="#" onmouseover="mostra('indirizzo')" shape="poly" coords="416,189,612,198,791,300,774,505,398,497,400,190" />
    						<area alt="francobollo" title="francobollo" href="#" onmouseover="mostra('francobollo')" shape="poly" coords="683,218,762,151,760,89,663,44,581,113,601,171" />
    						<area alt="timbro" title="timbro" href="#" onmouseover="mostra('Timbro1')" shape="poly" coords="441,166,488,150,519,114,526,87,518,51,499,18,463,1,400,8,371,22,348,54,360,100,378,136" />
    						<area alt="messaggio" title="messaggio" href="#" onmouseover="mostra('analisi_R')" shape="poly" coords="346,88,354,264,255,402,191,377,182,42" />
    						<area alt="firma" title="firma" href="#" onmouseover="mostra('analisi_R')" shape="poly" coords="40,57,81,8,153,74,175,372,59,410" />
    						<area alt="data" title="data" href="#" onmouseover="mostra('analisi_R')" shape="poly" coords="319,452,288,373,337,285,383,306,377,456" />
    						<area alt="diritti" title="diritti" href="#" onmouseover="mostra('Proprietà artistica riservata.')" shape="poly" coords="2,377,23,379,28,189,7,191" />
    						<area alt="titolo opera" title="titolo opera" href="#" onmouseover="mostra('artistiche')" shape="poly" coords="48,415,256,415,253,461,53,461" />
						</map>
						<map name="7694_222R" id='7694_222R'>
							<area alt="francobollo" title="francobollo" href="#" onmouseover="mostra('francobollo')" shape="poly" coords="701,23,697,149,810,160,809,26" />
							<area alt="indirizzo" title="indirizzo" href="#" onmouseover="mostra('indirizzo')" shape="poly" coords="815,202,813,497,445,512,439,201" />
							<area alt="firma" title="firma" href="#" onmouseover="mostra('analisi_R')" shape="poly" coords="358,117,363,423,213,408,115,33" />
							<area alt="data" title="data" href="#" onmouseover="mostra('datacorretta')" shape="poly" coords="70,118,54,243,3,220,4,103" />
 							<area alt="titolo opera" title="titolo opera" href="#" onmouseover="mostra('artistiche')" shape="poly" coords="97,241,91,424,29,424,27,271" />
							<area alt="info stampa" title="info stampa" href="#" onmouseover="mostra('PRINTED IN PARIS. I.LAPINA')" shape="poly" coords="400,309,400,467,422,468,422,309" />
						</map>
						<map name="7694_225R" id='7694_225R'>
							<area alt="indirizzo" title="indirizzo" href="#" onmouseover="mostra('indirizzo')" shape="poly" coords="449,202,686,201,691,247,784,399,795,492,446,496,413,398,413,281" />
							<area alt="titolo opera e diritti" title="titolo opera e diritti" href="#" onmouseover="mostra('artistiche')" shape="poly" coords="374,223,398,222,399,490,376,490" />
							<area alt="messaggio" title="messaggio" href="#" onmouseover="mostra('analisi_R')" shape="poly" coords="363,22,346,440,294,523,36,523,29,13" />
							<area alt="timbro 3" title="timbro 3" href="#" onmouseover="mostra('Timbro3')" shape="poly" coords="504,50,508,168,701,166,700,42" />
							<area alt="timbro 2" title="timbro 2" href="#" onmouseover="mostra('Timbro2')" shape="poly" coords="424,220,445,199,588,196,585,177,500,176,486,119,460,119,436,150,423,184" />
							<area alt="timbro 1" title="timbro 1" href="#" onmouseover="mostra('Timbro1')" shape="poly" coords="363,181,373,44,421,68,439,96,437,122,429,148,406,171" />
							<area alt="francobollo" title="francobollo" href="#" onmouseover="mostra('francobollo')" shape="poly" coords="708,38,710,162,805,162,805,37" />
						</map>
						<map name="7694_222F" id='7694_222F'>
							<area alt="messaggio" title="messaggio" href="#" onmouseover="mostra('analisi_F')" shape="poly" coords="703,85,808,90,808,303,705,284" />
							<area alt="particolare" title="particolare" href="#" onmouseover="mostra('Henry Tenré')" shape="poly" coords="146,46,199,46,206,0,154,1" />
						</map>
						<map name="7694_225F" id='7694_225F'>
							<area alt="messaggio" title="messaggio" href="#" onmouseover="mostra('analisi_F')" shape="poly" coords="2,522,123,522,121,0,2,2" />
						</map>
	                    	<div id="figcaption">
	                    		<div><h4>Passa il mouse sulla cartolina per i dettagli</h4><p></p></div>
	                    	</div>
	                    	<div id="popup">
							</div>
							<div id="pulsante">
								<button onclick="ruota(false)">&#8634;</button>
							</div>
	                    </figure>
	                </div>
	                <div id="responsabili">
	                	<h3>Edizione</h3>
	                    <xsl:for-each select="tei:teiHeader/tei:fileDesc">
	                        <p><xsl:value-of select="tei:editionStmt/tei:edition"/></p>
	                        <p><xsl:value-of select="tei:editionStmt/tei:date"/></p>
	                        <br/>
	                	    <xsl:for-each select="tei:editionStmt/tei:respStmt">
	                	        <h4><xsl:value-of select="tei:resp"/></h4>
	                		    <xsl:for-each select="tei:name">
	                		    	<xsl:if test="position()>1">
	                				    &#160;e&#160;
	                        	    </xsl:if>
	                		    	<xsl:value-of select="."/>
	                		    </xsl:for-each>
	                	        <br/>
	                	    </xsl:for-each>
	                    </xsl:for-each>
	                </div>
	                <div id="pubblicazione">
	                    <xsl:for-each select="tei:teiHeader/tei:fileDesc/tei:publicationStmt">
	                    	<xsl:for-each select="*">
	                    		<h4><xsl:value-of select="local-name()"/></h4>
	                    	    <xsl:value-of select="."/>
	                    	    <br/>
	                    	</xsl:for-each>
	                    </xsl:for-each>
	                </div>
                </header>   

               	<div id="artistiche">
				    <xsl:for-each select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl">
						<h3><xsl:value-of select="local-name()"/></h3>
					    <xsl:for-each select="*">
			                <h4><xsl:value-of select="local-name()"/></h4>
				            <xsl:value-of select="."/>
					        <br/>
				        </xsl:for-each>
	                </xsl:for-each>
	                <h4>Descrizione</h4><xsl:value-of select="tei:text/tei:body/tei:div/tei:figure/tei:figDesc"/>
	            </div>
	            <div id="descrizione">
	                <xsl:for-each select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier">
	                	<h3><xsl:value-of select="local-name()"/></h3>
	                	<xsl:for-each select="*">
					        <h4><xsl:value-of select="local-name()"/></h4>
					        <xsl:value-of select="."/>
					        <br/>
					    </xsl:for-each>
	                </xsl:for-each>
	                <xsl:for-each select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents">
	                    <h3><xsl:value-of select="local-name()"/></h3>
	                	<xsl:for-each select="*">
					        <h4><xsl:value-of select="local-name()"/></h4>
					        <xsl:value-of select="."/>
					        <br/>
					    </xsl:for-each>
	                </xsl:for-each>
			        <xsl:for-each select="//tei:condition">
			            <xsl:for-each select=".">
			                <h4>Stato di conservazione:</h4><xsl:value-of select="."/>
			        	</xsl:for-each>	
			        </xsl:for-each>
			        <br/>
			        <xsl:for-each select="//tei:keywords">
			            <xsl:for-each select=".">
			                <h4>Parole chiave:</h4>
			                <xsl:for-each select="*">
			                	<xsl:if test="position()>1">
			                		<xsl:value-of select="."/>
			                		&#160;
			                	</xsl:if>
			                </xsl:for-each>
			        	</xsl:for-each>	
			        </xsl:for-each>
			        <br/>
 					<h4>Note:</h4>
 					<xsl:for-each select="//tei:note">
			        	<xsl:value-of select="."/>
			        	<br/>
			    	</xsl:for-each>
	            </div>
	    	<table id="impaginazione">
	    		<tr>
	    			<td>
			            <div id="supporto">
			                <xsl:for-each select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support">
			                    <h3><xsl:value-of select="local-name()"/></h3>
			                    <xsl:for-each select="*">
							        <h4><xsl:value-of select="local-name()"/></h4><xsl:value-of select="."/>
							        <xsl:if test="name()='dimensions'">
			                			cm
			                        </xsl:if>
							        <br/>
							      </xsl:for-each>
			                </xsl:for-each>
			            </div>
	                </td>
	                <td>
	            		<div id="persone">
		                	<h3>Persone</h3>
		                	<xsl:for-each select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person">
		                	    <xsl:if test="position()=1">
		                	    <div id="sinistro">
		                	       <h4>Mittente</h4><br/>
		                	       <h5>Nome:</h5><xsl:value-of select="tei:persName/tei:forename"/><br/>
		                	       <h5>Cognome:</h5><xsl:value-of select="tei:persName/tei:surname"/><br/>
		                	       <h5>Sesso:</h5><xsl:value-of select="tei:sex"/>
		                	    </div>
		                	    </xsl:if>
		                	    <xsl:if test="position()=2">
		                	    <div id="destro">
		                	       <h4>Destinatario</h4><br/>
		                	       <h5>Nome:</h5><xsl:value-of select="tei:persName/tei:forename"/><br/>
		                	       <h5>Cognome:</h5><xsl:value-of select="tei:persName/tei:surname"/><br/>
		                	       <h5>Sesso:</h5><xsl:value-of select="tei:sex"/>
		                	    </div>
		                	    </xsl:if>
		                    </xsl:for-each>
	            		</div>
	                 </td>
	                 <td>
		            	<div id="destinazione">
		                	<xsl:for-each select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place">
		                		<h3><xsl:value-of select="local-name()"/></h3>
		                		<xsl:for-each select="*">
		                			<xsl:if test="@type!='località'">
						            <h4><xsl:value-of select="local-name()"/></h4>
						        	<xsl:value-of select="."/>
						        	<br/>
						            </xsl:if>
						        </xsl:for-each>
						   </xsl:for-each>
						   <h4>Spedita il</h4><xsl:value-of select="tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction/tei:date"/>
		                </div>
	                 </td>
	            </tr>
	        </table>
	        <table id="impaginazione2">
	        	<tr>
	        		<td>
	            <div id="trascrizione">
	                <h3>Trascrizione</h3>
	                <xsl:for-each select="tei:text/tei:body/tei:div/tei:div">
	                	<xsl:if test="@type='message'">
	                		<xsl:if test="position()=1">
	                			<div id="trascrizione_R">
	                        		<h4>Retro</h4>
	                            	<br/>
	                            	<xsl:for-each select="*">
					        	        <xsl:value-of select="."/><br/>
					        	    </xsl:for-each>
					        	</div>
	                        </xsl:if>
	                        <xsl:if test="position()=3">
	                        	<div id="trascrizione_F">
	                        		<h4>Fronte</h4><br/>
	                            	<xsl:for-each select="*">
					        	        <xsl:value-of select="."/><br/>
					        	    </xsl:for-each>
					        	</div>
					        </xsl:if>
					    </xsl:if>
				    </xsl:for-each>
			    </div>
	                </td>
	                <td>
		            <div id="affrancatura">
		                <h3>Affrancatura</h3>
		                <xsl:for-each select="tei:text/tei:body/tei:div/tei:div/tei:p/tei:stamp">
		                		<xsl:if test="@type='postmark'">
		                			<div>
		                		        <h4>Timbro <xsl:number value="position()" format="1 " /></h4><br/><xsl:value-of select="."/>
		                		    </div>
		                		</xsl:if>
		                		<xsl:if test="@type='postage'">
		                			<div id="francobollo">
		                			    <h4>Francobollo</h4><br/><xsl:value-of select="."/>
		                		    </div>
		                		</xsl:if>
		                </xsl:for-each>
		            </div>
		            </td>
		            <td>
		            <div id="indirizzo">
		                <h3>Indirizzo</h3>
		                <xsl:for-each select="tei:text/tei:body/tei:div/tei:div/tei:p/tei:address">
		                    <xsl:for-each select="*">
		                		<xsl:value-of select="."/>
						        <br/>
						    </xsl:for-each>
		                </xsl:for-each>
		            </div>
		        </td>
		    </tr>
		</table>
		<div id="analisi">
			<xsl:for-each select="tei:text/tei:body/tei:div/tei:div">
	            <xsl:if test="@type='message'">
	                <xsl:if test="position()=1">
	                	<div id="analisi_R" hidden="hidden">
	                		<h4>Retro</h4><br/>
							<xsl:for-each select="tei:p|tei:signed">
								<p>
								<xsl:for-each select="*">
									<xsl:choose>
										<xsl:when test="local-name()='date'">
											<dfn><xsl:value-of select="local-name()"/></dfn>
											<span><xsl:value-of select="."/>&#160;</span>
										</xsl:when>
										<xsl:when test="local-name()='pc'">
											<dfn><xsl:value-of select="@*"/></dfn>
											<span><xsl:value-of select="."/>&#160;</span>
										</xsl:when>
										<xsl:when test="local-name()='unclear'">
											<dfn><xsl:value-of select="@*"/></dfn>
											<span><xsl:value-of select="."/>&#160;</span>
										</xsl:when>
										<xsl:when test="local-name()='add'">
											<xsl:for-each select="*/*">
											<dfn><xsl:value-of select="@*"/></dfn>
											<span><xsl:value-of select="."/>&#160;</span>
											</xsl:for-each>
										</xsl:when>
										<xsl:otherwise>
						    				<dfn><xsl:for-each select="@lemma">Lemma: </xsl:for-each><xsl:value-of select="@*"/></dfn>
						    				<span><xsl:value-of select="."/>&#160;</span>
						    			</xsl:otherwise>
						    		</xsl:choose>
								</xsl:for-each>
								</p>
								<br/>
							</xsl:for-each>
						</div>
					</xsl:if>
				</xsl:if>
				<xsl:if test="@type='message'">
	                <xsl:if test="position()>1">
	                	<div id="analisi_F" hidden="hidden">
	                		<h4>Fronte</h4><br/>
							<xsl:for-each select="tei:p|tei:signed">
							<p>
								<xsl:for-each select="*">
									<xsl:choose>
										<xsl:when test="local-name()='date'">
											<dfn><xsl:value-of select="local-name()"/></dfn>
											<span><xsl:value-of select="."/>&#160;</span>
										</xsl:when>
										<xsl:otherwise>
						    				<dfn><xsl:for-each select="@lemma">Lemma: </xsl:for-each><xsl:value-of select="@*"/></dfn>
						    				<span><xsl:value-of select="."/>&#160;</span>
						    			</xsl:otherwise>
						    		</xsl:choose>
								</xsl:for-each>
							</p>
							<br/>
							</xsl:for-each>
						</div>
					</xsl:if>
				</xsl:if>
			</xsl:for-each>
		</div>
    </main>
    <div id="finestra" hidden="hidden">
    </div>
	<footer>
		Università di Pisa - Informatica Umanistica (2018-2019)- Davide I. Cucurnia e Alessandro Arena
	</footer>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>