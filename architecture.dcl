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

%Constraints
Service can-depend-only Controller
only Model can-declare Persistence
only Controller can-depend Controller
only DAO can-declare Esfinge
View cannot-access Model
Model must-declare Serializable
only Controller can-declare VRaptor
only Controller can-declare JavaxSwing
DAO cannot-declare FileNotFound
Model cannot-declare IOException
Model cannot-declare SQL
only Service can-declare File
only Service can-declare FileIS
only Service can-declare InetAddress
only Service can-declare ImageIO