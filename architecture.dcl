%Modules
module Controller:    br.leona.server.controller.*
module Model:         br.leona.server.model.*
module Service:       br.leona.server.service*
module DAO:           br.leona.server.dao.*
module Persistence:   javax.persistence.*
module Esfinge:       org.esfinge.*
module Serializable:  java.io.Serializable.*
module VRaptor:       br.com.caelum.vraptor.*
module JavaxSwing;    javax.swing.* 
module List:          java.util.List.*
module FileNotFound:  java.io.FileNotFoundException
module IOException:   java.io.IOException
module SQL:           java.sql.*
module File:          java.io.File.*
module FileIS:        java.io.FileInputStream.*
module InetAddress:   java.net.InetAddress.*
module ImageIO:       javax.imageio.ImageIO.*
module ParseException:java.text.ParseException
module HttpServletReq:javax.servlet.http.HttpServletRequest
module HttpSession:   javax.servlet.http.HttpSession.*
module Quartz:        org.quartz.*
module PrintWriter:   java.io.PrintWriter.*
module ServletEx:     javax.servlet.ServletException.*
module HttpServlet:   javax.servlet.http.HttpServlet.*
module HttpServletRes:javax.servlet.http.HttpServletResponse.*
module HttpServletReq:javax.servlet.http.HttpServletRequest
module FTP:           org.apache.commons.net.ftp.*
module Logging:       java.util.logging.*
module ArrayList:     java.util.ArrayList.*
module Security:      java.security.*
module NetURL:        java.net.URL.*

%Constraints
Service can-depend-only Controller
only Model can-declare Persistence
only Controller can-depend Controller
only DAO can-declare Esfinge
View cannot-access Model
Model must-declare Serializable
Model cannot-declare VRaptor
only Controller can-declare JavaxSwing
DAO cannot-declare FileNotFound
Model cannot-declare IOException
Model cannot-declare SQL
only Service can-declare File
only Service can-declare FileIS
only Service can-declare InetAddress
only Service can-declare ImageIO
Model cannot-declare ParseException
only Controller can-declare HttpSession
only Service can-declare Quartz
only Servlet can-declare PrintWriter
only Servlet can-declare ServletEx
only Servlet can-declare HttpServlet
only Servlet can-declare HttpServletRes
Service cannot-declare HttpServletReq
only Service can-declare FTP
Controller cannot-declare Logging
only Service can-declare ArrayList
only Service can-declare Security
only Service can-declare NetURL