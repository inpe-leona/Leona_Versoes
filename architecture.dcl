%Modules
module Controller:    br.leona.server.controller.*
module VRaptor:       br.com.caelum.vraptor.*
 
%Constraints
only Controller can-depend Controller
only Controller can-declare VRaptor