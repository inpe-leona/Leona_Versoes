%Modules
module Controller:    br.leona.server.controller.*
module Model:         br.leona.server.model.*
module Service:       br.leona.server.service*
module DAO:           br.leona.server.dao.*
module Servlet:		  br.leona.server.Servlet.*
module VRaptor:       br.com.caelum.vraptor.* 
module BufferedImage: java.awt.image.BufferedImage.*
module File:          java.io.File.*
module FileIS:        java.io.FileInputStream.*
module FileOS:        java.io.FileOutputStream.*
module PrintWriter:   java.io.PrintWriter.*
module InetAddress:   java.net.InetAddress.*
module NetURL:        java.net.URL.*
module Security:      java.security.*
module ArrayList:     java.util.ArrayList.*
module Properties:    java.util.Properties.*
module ImageIO:       javax.imageio.ImageIO.*
module Mail:          javax.mail.*
module Entity:        javax.persistence.Entity.*
module EntityManager: javax.persistence.EntityManager.*
module EMF:           javax.persistence.EntityManagerFactory.*
module PersistenceGV: javax.persistence.GeneratedValue.*
module PersistenceGT: javax.persistence.GenerationType.*
module PersistenceId: javax.persistence.Id.*
module Persistence:   javax.persistence.Persistence.*
module HttpServlet:   javax.servlet.http.HttpServlet.*
module HttpServletRes:javax.servlet.http.HttpServletResponse.*
module HttpSession:   javax.servlet.http.HttpSession.*
module ServletEx:     javax.servlet.ServletException.*
module JavaxSwing:    javax.swing.JOptionPane.*
module FTP:           org.apache.commons.net.ftp.*
module EsfingeEMP:    org.esfinge.querybuilder.jpa1.EntityManagerProvider.*
module EsfingeRepo:   org.esfinge.querybuilder.Repository.*
module Quartz:        org.quartz.*
module FileNotFound:  java.io.FileNotFoundException
module IOException:   java.io.IOException
module Serializable:  java.io.Serializable
module SQL:           java.sql.*
module ParseException:java.text.ParseException
module List:          java.util.List
module Logging:       java.util.logging.
module HttpServletReq:javax.servlet.http.HttpServletRequest
module EsfingeQB:     org.esfinge.querybuilder.QueryBuilder
 
%Constraints
Service can-depend-only Controller
only DAO can-declare Persistence
only Controller can-depend Controller
only DAO can-declare Esfinge
Model must-declare Serializable
only Controller can-declare VRaptor
only Controller can-declare JavaxSwing
only Service can-declare BufferedImage
only Service can-declare File
only Service can-declare FileIS
only Service can-declare FileOS
only Service can-declare InetAddress
only Service can-declare NetURL
only Service can-declare Security
only Service can-declare ArrayList
only Service can-declare Properties
only Service can-declare ImageIO
only Service can-declare Mail
only Servlet can-declare PrintWriter
only Model can-declare Entity
only Model can-declare PersistenceGV
only Model can-declare PersistenceGT
only Model can-declare PersistenceId
only DAO can-declare EntityManager
only DAO can-declare EMF
only Servlet can-declare HttpServlet
only Servlet can-declare HttpServletRes
only Servlet can-declare ServletEx
only Controller can-declare HttpSession
only DAO can-declare EsfingeEMP
only DAO can-declare EsfingeRepo
only Service can-declare Quartz
DAO cannot-declare FileNotFound
Model cannot-declare IOException
Controller cannot-declare Serializable
Servlet cannot-declare SQL
Model cannot-declare ParseException
Servlet cannot-declare List
Controller cannot-declare Logging
Service cannot-declare HttpServletReq
Model cannot-declare EsfingeQB
only Service can-declare FTP