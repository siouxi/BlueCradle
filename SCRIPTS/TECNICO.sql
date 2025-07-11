/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     10/07/2025 20:09:41                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COBRA') and o.name = 'FK_COBRA_COBRA_PENALTI')
alter table COBRA
   drop constraint FK_COBRA_COBRA_PENALTI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COBRA') and o.name = 'FK_COBRA_COBRA2_JUGADOR')
alter table COBRA
   drop constraint FK_COBRA_COBRA2_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMPITE_JUEGA') and o.name = 'FK_COMPITE__COMPITE_J_COMPETIC')
alter table COMPITE_JUEGA
   drop constraint FK_COMPITE__COMPITE_J_COMPETIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMPITE_JUEGA') and o.name = 'FK_COMPITE__COMPITE_J_JUGADOR')
alter table COMPITE_JUEGA
   drop constraint FK_COMPITE__COMPITE_J_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTRATOS') and o.name = 'FK_CONTRATO_TIENE_CON_JUGADOR')
alter table CONTRATOS
   drop constraint FK_CONTRATO_TIENE_CON_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTRATOS') and o.name = 'FK_CONTRATO_TIENE_CON_PERSONAL')
alter table CONTRATOS
   drop constraint FK_CONTRATO_TIENE_CON_PERSONAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DIRIGE_ENTRENAMIENTO') and o.name = 'FK_DIRIGE_E_DIRIGE_EN_PERSONAL')
alter table DIRIGE_ENTRENAMIENTO
   drop constraint FK_DIRIGE_E_DIRIGE_EN_PERSONAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DIRIGE_ENTRENAMIENTO') and o.name = 'FK_DIRIGE_E_DIRIGE_EN_ENTRENAM')
alter table DIRIGE_ENTRENAMIENTO
   drop constraint FK_DIRIGE_E_DIRIGE_EN_ENTRENAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENTRENA') and o.name = 'FK_ENTRENA_ENTRENA_JUGADOR')
alter table ENTRENA
   drop constraint FK_ENTRENA_ENTRENA_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ENTRENA') and o.name = 'FK_ENTRENA_ENTRENA2_ENTRENAM')
alter table ENTRENA
   drop constraint FK_ENTRENA_ENTRENA2_ENTRENAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GOL') and o.name = 'FK_GOL_ANOTO_JUGADOR')
alter table GOL
   drop constraint FK_GOL_ANOTO_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GOL') and o.name = 'FK_GOL_MARCO_PARTIDO_')
alter table GOL
   drop constraint FK_GOL_MARCO_PARTIDO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GOL') and o.name = 'FK_GOL_MARCO2_PARTIDO_')
alter table GOL
   drop constraint FK_GOL_MARCO2_PARTIDO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GOL') and o.name = 'FK_GOL_MARCO3_PARTIDO_')
alter table GOL
   drop constraint FK_GOL_MARCO3_PARTIDO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HISTORIAL_MEDICO') and o.name = 'FK_HISTORIA_INFO_MEDI_JUGADOR')
alter table HISTORIAL_MEDICO
   drop constraint FK_HISTORIA_INFO_MEDI_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JUEGA_PARTIDO') and o.name = 'FK_JUEGA_PA_JUEGA_PAR_JUGADOR')
alter table JUEGA_PARTIDO
   drop constraint FK_JUEGA_PA_JUEGA_PAR_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JUEGA_PARTIDO') and o.name = 'FK_JUEGA_PA_JUEGA_PAR_PARTIDO_AMISTOSO')
alter table JUEGA_PARTIDO
   drop constraint FK_JUEGA_PA_JUEGA_PAR_PARTIDO_AMISTOSO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JUEGA_PARTIDO') and o.name = 'FK_JUEGA_PA_JUEGA_PAR_PARTIDO_COPA')
alter table JUEGA_PARTIDO
   drop constraint FK_JUEGA_PA_JUEGA_PAR_PARTIDO_COPA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('JUEGA_PARTIDO') and o.name = 'FK_JUEGA_PA_JUEGA_PAR_PARTIDO_LIGA')
alter table JUEGA_PARTIDO
   drop constraint FK_JUEGA_PA_JUEGA_PAR_PARTIDO_LIGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LESION') and o.name = 'FK_LESION_HUBO_LESI_PARTIDO_AMISTOSO')
alter table LESION
   drop constraint FK_LESION_HUBO_LESI_PARTIDO_AMISTOSO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LESION') and o.name = 'FK_LESION_HUBO_LESI_PARTIDO_COPA')
alter table LESION
   drop constraint FK_LESION_HUBO_LESI_PARTIDO_COPA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LESION') and o.name = 'FK_LESION_HUBO_LESI_PARTIDO_LIGA')
alter table LESION
   drop constraint FK_LESION_HUBO_LESI_PARTIDO_LIGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LESION') and o.name = 'FK_LESION_INCAPACIT_JUGADOR')
alter table LESION
   drop constraint FK_LESION_INCAPACIT_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PARTIDO_AMISTOSO') and o.name = 'FK_PARTIDO_AMISTOSO__ENCUENTRO_COMPETICION')
alter table PARTIDO_AMISTOSO
   drop constraint FK_PARTIDO_AMISTOSO__ENCUENTRO_COMPETICION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PARTIDO_COPA') and o.name = 'FK_PARTIDO_COPA__ENCUENTRO_COMPETICION')
alter table PARTIDO_COPA
   drop constraint FK_PARTIDO_COPA__ENCUENTRO_COMPETICION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PARTIDO_LIGA') and o.name = 'FK_PARTIDO_LIGA__ENCUENTRO_COMPETICION')
alter table PARTIDO_LIGA
   drop constraint FK_PARTIDO_LIGA__ENCUENTRO_COMPETICION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PENALTI') and o.name = 'FK_PENALTI_HUBO_PENA_PARTIDO_AMISTOSO')
alter table PENALTI
   drop constraint FK_PENALTI_HUBO_PENA_PARTIDO_AMISTOSO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PENALTI') and o.name = 'FK_PENALTI_HUBO_PENA_PARTIDO_COPA')
alter table PENALTI
   drop constraint FK_PENALTI_HUBO_PENA_PARTIDO_COPA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PENALTI') and o.name = 'FK_PENALTI_HUBO_PENA_PARTIDO_LIGA')
alter table PENALTI
   drop constraint FK_PENALTI_HUBO_PENA_PARTIDO_LIGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANCION') and o.name = 'FK_SANCION_COMETE_RE_JUGADOR')
alter table SANCION
   drop constraint FK_SANCION_COMETE_RE_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANCION') and o.name = 'FK_SANCION_OCURRIO_S_PARTIDO_AMISTOSO')
alter table SANCION
   drop constraint FK_SANCION_OCURRIO_S_PARTIDO_AMISTOSO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANCION') and o.name = 'FK_SANCION_OCURRIO_S_PARTIDO_COPA')
alter table SANCION
   drop constraint FK_SANCION_OCURRIO_S_PARTIDO_COPA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SANCION') and o.name = 'FK_SANCION_OCURRIO_S_PARTIDO_LIGA')
alter table SANCION
   drop constraint FK_SANCION_OCURRIO_S_PARTIDO_LIGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TACTICAS') and o.name = 'FK_TACTICAS_ORDENA_PERSONAL')
alter table TACTICAS
   drop constraint FK_TACTICAS_ORDENA_PERSONAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TACTICAS') and o.name = 'FK_TACTICAS_SE_USO_PARTIDO_')
alter table TACTICAS
   drop constraint FK_TACTICAS_SE_USO_PARTIDO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TACTICAS') and o.name = 'FK_TACTICAS_SE_USO2_PARTIDO_')
alter table TACTICAS
   drop constraint FK_TACTICAS_SE_USO2_PARTIDO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TACTICAS') and o.name = 'FK_TACTICAS_SE_USO3_PARTIDO_')
alter table TACTICAS
   drop constraint FK_TACTICAS_SE_USO3_PARTIDO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITULOS_Y_TROFEOS') and o.name = 'FK_TITULOS__LOGRO_JUGADOR')
alter table TITULOS_Y_TROFEOS
   drop constraint FK_TITULOS__LOGRO_JUGADOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITULOS_Y_TROFEOS') and o.name = 'FK_TITULOS__RELATIONS_COMPETIC')
alter table TITULOS_Y_TROFEOS
   drop constraint FK_TITULOS__RELATIONS_COMPETIC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COBRA')
            and   type = 'U')
   drop table COBRA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COMPETICION')
            and   type = 'U')
   drop table COMPETICION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COMPITE_JUEGA')
            and   type = 'U')
   drop table COMPITE_JUEGA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONTRATOS')
            and   name  = 'TIENE_CONTRATOS2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONTRATOS.TIENE_CONTRATOS2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONTRATOS')
            and   type = 'U')
   drop table CONTRATOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIRIGE_ENTRENAMIENTO')
            and   type = 'U')
   drop table DIRIGE_ENTRENAMIENTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ENTRENA')
            and   type = 'U')
   drop table ENTRENA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ENTRENAMIENTO')
            and   type = 'U')
   drop table ENTRENAMIENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GOL')
            and   name  = 'MARCO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index GOL.MARCO2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GOL')
            and   name  = 'ANOTO_FK'
            and   indid > 0
            and   indid < 255)
   drop index GOL.ANOTO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GOL')
            and   type = 'U')
   drop table GOL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HISTORIAL_MEDICO')
            and   name  = 'INFO_MEDICA_FK'
            and   indid > 0
            and   indid < 255)
   drop index HISTORIAL_MEDICO.INFO_MEDICA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HISTORIAL_MEDICO')
            and   type = 'U')
   drop table HISTORIAL_MEDICO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('JUEGA_PARTIDO')
            and   type = 'U')
   drop table JUEGA_PARTIDO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('JUGADOR')
            and   type = 'U')
   drop table JUGADOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LESION')
            and   name  = 'HUBO_LESIONES2_FK'
            and   indid > 0
            and   indid < 255)
   drop index LESION.HUBO_LESIONES2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LESION')
            and   name  = 'INCAPACITADO_FK'
            and   indid > 0
            and   indid < 255)
   drop index LESION.INCAPACITADO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LESION')
            and   type = 'U')
   drop table LESION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PARTIDO_AMISTOSO')
            and   name  = 'ENCUENTROS3_FK'
            and   indid > 0
            and   indid < 255)
   drop index PARTIDO_AMISTOSO.ENCUENTROS3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARTIDO_AMISTOSO')
            and   type = 'U')
   drop table PARTIDO_AMISTOSO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PARTIDO_COPA')
            and   name  = 'ENCUENTROS2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PARTIDO_COPA.ENCUENTROS2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARTIDO_COPA')
            and   type = 'U')
   drop table PARTIDO_COPA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PARTIDO_LIGA')
            and   name  = 'ENCUENTROS_FK'
            and   indid > 0
            and   indid < 255)
   drop index PARTIDO_LIGA.ENCUENTROS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PARTIDO_LIGA')
            and   type = 'U')
   drop table PARTIDO_LIGA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PENALTI')
            and   name  = 'HUBO_PENAL2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PENALTI.HUBO_PENAL2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PENALTI')
            and   type = 'U')
   drop table PENALTI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERSONAL_TECNICO')
            and   type = 'U')
   drop table PERSONAL_TECNICO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SANCION')
            and   name  = 'OCURRIO_SANCION2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SANCION.OCURRIO_SANCION2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SANCION')
            and   name  = 'COMETE_RECIBE_FK'
            and   indid > 0
            and   indid < 255)
   drop index SANCION.COMETE_RECIBE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SANCION')
            and   type = 'U')
   drop table SANCION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TACTICAS')
            and   name  = 'SE_USO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TACTICAS.SE_USO2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TACTICAS')
            and   name  = 'ORDENA_FK'
            and   indid > 0
            and   indid < 255)
   drop index TACTICAS.ORDENA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TACTICAS')
            and   type = 'U')
   drop table TACTICAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITULOS_Y_TROFEOS')
            and   name  = 'RELATIONSHIP_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITULOS_Y_TROFEOS.RELATIONSHIP_16_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITULOS_Y_TROFEOS')
            and   name  = 'LOGRO_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITULOS_Y_TROFEOS.LOGRO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TITULOS_Y_TROFEOS')
            and   type = 'U')
   drop table TITULOS_Y_TROFEOS
go

if exists(select 1 from systypes where name='NACIONALIDAD_DOMINIO')
   execute sp_unbindrule NACIONALIDAD_DOMINIO
go

if exists(select 1 from systypes where name='NACIONALIDAD_DOMINIO')
   drop type NACIONALIDAD_DOMINIO
go

if exists (select 1 from sysobjects where id=object_id('R_NACIONALIDAD_DOMINIO') and type='R')
   drop rule  R_NACIONALIDAD_DOMINIO
go

create rule R_NACIONALIDAD_DOMINIO as
      @column in ('<Val0>') and @column = upper(@column)
go

/*==============================================================*/
/* Domain: NACIONALIDAD_DOMINIO                                 */
/*==============================================================*/
create type NACIONALIDAD_DOMINIO
   from varchar(3) not null
go

execute sp_bindrule R_NACIONALIDAD_DOMINIO, NACIONALIDAD_DOMINIO
go

/*==============================================================*/
/* Table: COBRA                                                 */
/*==============================================================*/
create table COBRA (
   ID_PENALTI           bigint               not null,
   ID_PERSONAL          bigint               not null,
   constraint PK_COBRA primary key nonclustered (ID_PENALTI, ID_PERSONAL)
)
go

/*==============================================================*/
/* Table: COMPETICION                                           */
/*==============================================================*/
create table COMPETICION (
   ID_COMPETICION       bigint               not null,
   NOMBRE_COMPETICION   varchar(64)          not null,
   TIPO_COMPETICION     varchar(16)          not null,
   constraint PK_COMPETICION primary key nonclustered (ID_COMPETICION)
)
go

/*==============================================================*/
/* Table: COMPITE_JUEGA                                         */
/*==============================================================*/
create table COMPITE_JUEGA (
   ID_COMPETICION       bigint               not null,
   ID_PERSONAL          bigint               not null,
   constraint PK_COMPITE_JUEGA primary key nonclustered (ID_COMPETICION, ID_PERSONAL)
)
go

/*==============================================================*/
/* Table: CONTRATOS                                             */
/*==============================================================*/
create table CONTRATOS (
   ID_CONTRATO          bigint               not null,
   ID_PERSONAL          bigint               not null,
   FECHA_INICIO_CONTRATO datetime             not null,
   FECHA_FIN_CONTRATO   datetime             not null,
   MONTO_ACORDADO_CONTRATO float(64)            not null,
   ESTADO_CONTRATO      varchar(32)          not null,
   constraint PK_CONTRATOS primary key nonclustered (ID_CONTRATO)
)
go

/*==============================================================*/
/* Index: TIENE_CONTRATOS2_FK                                   */
/*==============================================================*/
create index TIENE_CONTRATOS2_FK on CONTRATOS (
ID_PERSONAL ASC
)
go

/*==============================================================*/
/* Table: DIRIGE_ENTRENAMIENTO                                  */
/*==============================================================*/
create table DIRIGE_ENTRENAMIENTO (
   ID_PERSONAL          bigint               not null,
   ID_ENTRENAMIENTO     int                  not null,
   constraint PK_DIRIGE_ENTRENAMIENTO primary key nonclustered (ID_PERSONAL, ID_ENTRENAMIENTO)
)
go

/*==============================================================*/
/* Table: ENTRENA                                               */
/*==============================================================*/
create table ENTRENA (
   ID_PERSONAL          bigint               not null,
   ID_ENTRENAMIENTO     int                  not null,
   constraint PK_ENTRENA primary key nonclustered (ID_PERSONAL, ID_ENTRENAMIENTO)
)
go

/*==============================================================*/
/* Table: ENTRENAMIENTO                                         */
/*==============================================================*/
create table ENTRENAMIENTO (
   ID_ENTRENAMIENTO     int                  not null,
   FECHA_ENTRENAMIENTO  datetime             not null,
   HORA_INICIO_ENTRENAMIENTO datetime             not null,
   HORA_FIN_ENTRENAMIENTO datetime             not null,
   LUGAR_ENTRENAMIENTO  varchar(40)          not null,
   OBSERVACIONES        varchar(255)         null,
   constraint PK_ENTRENAMIENTO primary key nonclustered (ID_ENTRENAMIENTO)
)
go

/*==============================================================*/
/* Table: GOL                                                   */
/*==============================================================*/
create table GOL (
   ID_GOL               bigint               not null,
   ID_PERSONAL          bigint               null,
   ID_PARTIDO           bigint               null,
   25                   float(10)            not null,
   constraint PK_GOL primary key nonclustered (ID_GOL)
)
go

/*==============================================================*/
/* Index: ANOTO_FK                                              */
/*==============================================================*/
create index ANOTO_FK on GOL (
ID_PERSONAL ASC
)
go

/*==============================================================*/
/* Index: MARCO2_FK                                             */
/*==============================================================*/
create index MARCO2_FK on GOL (
ID_PARTIDO ASC
)
go

/*==============================================================*/
/* Table: HISTORIAL_MEDICO                                      */
/*==============================================================*/
create table HISTORIAL_MEDICO (
   ID_HISTORIAL_MEDICO  bigint               not null,
   ID_PERSONAL          bigint               null,
   GRUPO_SANGUINEO      varchar(3)           not null,
   ALERGIAS             varchar(64)          null,
   COONDICIONES_PREEXISTENTES varchar(255)         null,
   MOTIVO_HISTORIAL     varchar(255)         null,
   constraint PK_HISTORIAL_MEDICO primary key nonclustered (ID_HISTORIAL_MEDICO)
)
go

/*==============================================================*/
/* Index: INFO_MEDICA_FK                                        */
/*==============================================================*/
create index INFO_MEDICA_FK on HISTORIAL_MEDICO (
ID_PERSONAL ASC
)
go

/*==============================================================*/
/* Table: JUEGA_PARTIDO                                         */
/*==============================================================*/
create table JUEGA_PARTIDO (
   ID_PERSONAL          bigint               not null,
   ID_PARTIDO           bigint               not null,
   constraint PK_JUEGA_PARTIDO primary key nonclustered (ID_PERSONAL, ID_PARTIDO)
)
go

/*==============================================================*/
/* Table: JUGADOR                                               */
/*==============================================================*/
create table JUGADOR (
   ID_PERSONAL          bigint               not null,
   NOMBRE_PERSONAL      varchar(64)          null,
   FECHA_NACIMIENTO     datetime             null,
   NACIONALIDAD_PERSONAL varchar(3)           null,
   EMAIL_PERSONAL       varchar(40)          null,
   TELEFONO_PERSONAL    bigint               null,
   POSICION_PRINCIPAL   varchar(20)          not null,
   NUMERO_CAMISETA      int                  not null,
   POSICION_SECUNDARIA  varchar(20)          null,
   ALTURA               float(3)             null,
   constraint PK_JUGADOR primary key nonclustered (ID_PERSONAL)
)
go

/*==============================================================*/
/* Table: LESION                                                */
/*==============================================================*/
create table LESION (
   ID_LESION            bigint               not null,
   ID_PERSONAL          bigint               null,
   ID_PARTIDO           bigint               null,
   TIPO_LESION          varchar(32)          not null,
   GRAVEDAD             int                  not null,
   FECHA_LESION         datetime             not null,
   RECUPERACION_ESTIMADA datetime             null,
   constraint PK_LESION primary key nonclustered (ID_LESION)
)
go

/*==============================================================*/
/* Index: INCAPACITADO_FK                                       */
/*==============================================================*/
create index INCAPACITADO_FK on LESION (
ID_PERSONAL ASC
)
go

/*==============================================================*/
/* Index: HUBO_LESIONES2_FK                                     */
/*==============================================================*/
create index HUBO_LESIONES2_FK on LESION (
ID_PARTIDO ASC
)
go

/*==============================================================*/
/* Table: PARTIDO_AMISTOSO                                      */
/*==============================================================*/
create table PARTIDO_AMISTOSO (
   ID_PARTIDO           bigint               not null,
   FECHA_PARTIDO        datetime             null,
   HORA_PARTIDO         datetime             null,
   EQUIPO_RIVAL         varchar(32)          null,
   GOLES_MILLONARIOS    smallint             null,
   GOLES_RIVAL          smallint             null,
   ESTADIO_PARTIDO      varchar(64)          null,
   TIPO_PARTIDO         varchar(1)           null,
   ID_COMPETICION       bigint               not null,
   MOTIVO_AMISTOSO      varchar(100)         not null,
   ORGANIZADOR_AMISTOSO varchar(100)         not null,
   constraint PK_PARTIDO_AMISTOSO primary key nonclustered (ID_PARTIDO)
)
go

/*==============================================================*/
/* Index: ENCUENTROS3_FK                                        */
/*==============================================================*/
create index ENCUENTROS3_FK on PARTIDO_AMISTOSO (
ID_COMPETICION ASC
)
go

/*==============================================================*/
/* Table: PARTIDO_COPA                                          */
/*==============================================================*/
create table PARTIDO_COPA (
   ID_PARTIDO           bigint               not null,
   FECHA_PARTIDO        datetime             null,
   HORA_PARTIDO         datetime             null,
   EQUIPO_RIVAL         varchar(32)          null,
   GOLES_MILLONARIOS    smallint             null,
   GOLES_RIVAL          smallint             null,
   ESTADIO_PARTIDO      varchar(64)          null,
   TIPO_PARTIDO         varchar(1)           null,
   ID_COMPETICION       bigint               not null,
   RONDA                varchar(32)          not null,
   ES_ELIMINATORIA      bit                  not null,
   constraint PK_PARTIDO_COPA primary key nonclustered (ID_PARTIDO)
)
go

/*==============================================================*/
/* Index: ENCUENTROS2_FK                                        */
/*==============================================================*/
create index ENCUENTROS2_FK on PARTIDO_COPA (
ID_COMPETICION ASC
)
go

/*==============================================================*/
/* Table: PARTIDO_LIGA                                          */
/*==============================================================*/
create table PARTIDO_LIGA (
   ID_PARTIDO           bigint               not null,
   FECHA_PARTIDO        datetime             null,
   HORA_PARTIDO         datetime             null,
   EQUIPO_RIVAL         varchar(32)          null,
   GOLES_MILLONARIOS    smallint             null,
   GOLES_RIVAL          smallint             null,
   ESTADIO_PARTIDO      varchar(64)          null,
   TIPO_PARTIDO         varchar(1)           null,
   ID_COMPETICION       bigint               not null,
   JORNADA_LIGA         smallint             not null,
   TEMPORADA_LIGA       varchar(32)          not null,
   constraint PK_PARTIDO_LIGA primary key nonclustered (ID_PARTIDO)
)
go

/*==============================================================*/
/* Index: ENCUENTROS_FK                                         */
/*==============================================================*/
create index ENCUENTROS_FK on PARTIDO_LIGA (
ID_COMPETICION ASC
)
go

/*==============================================================*/
/* Table: PENALTI                                               */
/*==============================================================*/
create table PENALTI (
   ID_PENALTI           bigint               not null,
   ID_PARTIDO           bigint               null,
   RESULTADO_PENALTI    varchar(32)          not null,
   36                   float(10)            not null,
   constraint PK_PENALTI primary key nonclustered (ID_PENALTI)
)
go

/*==============================================================*/
/* Index: HUBO_PENAL2_FK                                        */
/*==============================================================*/
create index HUBO_PENAL2_FK on PENALTI (
ID_PARTIDO ASC
)
go

/*==============================================================*/
/* Table: PERSONAL_TECNICO                                      */
/*==============================================================*/
create table PERSONAL_TECNICO (
   ID_PERSONAL          bigint               not null,
   NOMBRE_PERSONAL      varchar(64)          null,
   FECHA_NACIMIENTO     datetime             null,
   NACIONALIDAD_PERSONAL varchar(3)           null,
   EMAIL_PERSONAL       varchar(40)          null,
   TELEFONO_PERSONAL    bigint               null,
   LICENCIA_ENTRENADOR  bigint               null,
   ROL                  varchar(20)          null,
   constraint PK_PERSONAL_TECNICO primary key nonclustered (ID_PERSONAL)
)
go

/*==============================================================*/
/* Table: SANCION                                               */
/*==============================================================*/
create table SANCION (
   ID_SANCION           bigint               not null,
   ID_PERSONAL          bigint               null,
   ID_PARTIDO           bigint               null,
   TIPO_SANCION         varchar(32)          not null,
   RAZON_SANCION        varchar(255)         null,
   MINUTO_SANCION       float(10)            null,
   FECHA_APLICACION_SANCION datetime             null,
   constraint PK_SANCION primary key nonclustered (ID_SANCION)
)
go

/*==============================================================*/
/* Index: COMETE_RECIBE_FK                                      */
/*==============================================================*/
create index COMETE_RECIBE_FK on SANCION (
ID_PERSONAL ASC
)
go

/*==============================================================*/
/* Index: OCURRIO_SANCION2_FK                                   */
/*==============================================================*/
create index OCURRIO_SANCION2_FK on SANCION (
ID_PARTIDO ASC
)
go

/*==============================================================*/
/* Table: TACTICAS                                              */
/*==============================================================*/
create table TACTICAS (
   ID_TACTICA           bigint               not null,
   ID_PERSONAL          bigint               null,
   ID_PARTIDO           bigint               null,
   NOMBRE_TACTICA       varchar(32)          not null,
   DESCRIPCCION         varchar(255)         null,
   TIEMPO_TACTICA       datetime             null,
   constraint PK_TACTICAS primary key nonclustered (ID_TACTICA)
)
go

/*==============================================================*/
/* Index: ORDENA_FK                                             */
/*==============================================================*/
create index ORDENA_FK on TACTICAS (
ID_PERSONAL ASC
)
go

/*==============================================================*/
/* Index: SE_USO2_FK                                            */
/*==============================================================*/
create index SE_USO2_FK on TACTICAS (
ID_PARTIDO ASC
)
go

/*==============================================================*/
/* Table: TITULOS_Y_TROFEOS                                     */
/*==============================================================*/
create table TITULOS_Y_TROFEOS (
   ID_TITULO            bigint               not null,
   ID_PERSONAL          bigint               null,
   ID_COMPETICION       bigint               null,
   NOMBRE_TIRULO        varchar(32)          not null,
   ANO_GANADO           smallint             not null,
   constraint PK_TITULOS_Y_TROFEOS primary key nonclustered (ID_TITULO)
)
go

/*==============================================================*/
/* Index: LOGRO_FK                                              */
/*==============================================================*/
create index LOGRO_FK on TITULOS_Y_TROFEOS (
ID_PERSONAL ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on TITULOS_Y_TROFEOS (
ID_COMPETICION ASC
)
go

alter table COBRA
   add constraint FK_COBRA_COBRA_PENALTI foreign key (ID_PENALTI)
      references PENALTI (ID_PENALTI)
go

alter table COBRA
   add constraint FK_COBRA_COBRA2_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table COMPITE_JUEGA
   add constraint FK_COMPITE__COMPITE_J_COMPETIC foreign key (ID_COMPETICION)
      references COMPETICION (ID_COMPETICION)
go

alter table COMPITE_JUEGA
   add constraint FK_COMPITE__COMPITE_J_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table CONTRATOS
   add constraint FK_CONTRATO_TIENE_CON_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table CONTRATOS
   add constraint FK_CONTRATO_TIENE_CON_PERSONAL foreign key (ID_PERSONAL)
      references PERSONAL_TECNICO (ID_PERSONAL)
go

alter table DIRIGE_ENTRENAMIENTO
   add constraint FK_DIRIGE_E_DIRIGE_EN_PERSONAL foreign key (ID_PERSONAL)
      references PERSONAL_TECNICO (ID_PERSONAL)
go

alter table DIRIGE_ENTRENAMIENTO
   add constraint FK_DIRIGE_E_DIRIGE_EN_ENTRENAM foreign key (ID_ENTRENAMIENTO)
      references ENTRENAMIENTO (ID_ENTRENAMIENTO)
go

alter table ENTRENA
   add constraint FK_ENTRENA_ENTRENA_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table ENTRENA
   add constraint FK_ENTRENA_ENTRENA2_ENTRENAM foreign key (ID_ENTRENAMIENTO)
      references ENTRENAMIENTO (ID_ENTRENAMIENTO)
go

alter table GOL
   add constraint FK_GOL_ANOTO_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table GOL
   add constraint FK_GOL_MARCO_PARTIDO_ foreign key (ID_PARTIDO)
      references PARTIDO_LIGA (ID_PARTIDO)
go

alter table GOL
   add constraint FK_GOL_MARCO2_PARTIDO_ foreign key (ID_PARTIDO)
      references PARTIDO_COPA (ID_PARTIDO)
go

alter table GOL
   add constraint FK_GOL_MARCO3_PARTIDO_ foreign key (ID_PARTIDO)
      references PARTIDO_AMISTOSO (ID_PARTIDO)
go

alter table HISTORIAL_MEDICO
   add constraint FK_HISTORIA_INFO_MEDI_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table JUEGA_PARTIDO
   add constraint FK_JUEGA_PA_JUEGA_PAR_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table JUEGA_PARTIDO
   add constraint FK_JUEGA_PA_JUEGA_PAR_PARTIDO_AMISTOSO foreign key (ID_PARTIDO)
      references PARTIDO_AMISTOSO (ID_PARTIDO)
go

alter table JUEGA_PARTIDO
   add constraint FK_JUEGA_PA_JUEGA_PAR_PARTIDO_COPA foreign key (ID_PARTIDO)
      references PARTIDO_COPA (ID_PARTIDO)
go

alter table JUEGA_PARTIDO
   add constraint FK_JUEGA_PA_JUEGA_PAR_PARTIDO_LIGA foreign key (ID_PARTIDO)
      references PARTIDO_LIGA (ID_PARTIDO)
go

alter table LESION
   add constraint FK_LESION_HUBO_LESI_PARTIDO_AMISTOSO foreign key (ID_PARTIDO)
      references PARTIDO_AMISTOSO (ID_PARTIDO)
go

alter table LESION
   add constraint FK_LESION_HUBO_LESI_PARTIDO_COPA foreign key (ID_PARTIDO)
      references PARTIDO_COPA (ID_PARTIDO)
go

alter table LESION
   add constraint FK_LESION_HUBO_LESI_PARTIDO_LIGA foreign key (ID_PARTIDO)
      references PARTIDO_LIGA (ID_PARTIDO)
go

alter table LESION
   add constraint FK_LESION_INCAPACIT_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table PARTIDO_AMISTOSO
   add constraint FK_PARTIDO_AMISTOSO__ENCUENTRO_COMPETICION foreign key (ID_COMPETICION)
      references COMPETICION (ID_COMPETICION)
go

alter table PARTIDO_COPA
   add constraint FK_PARTIDO_COPA__ENCUENTRO_COMPETICION foreign key (ID_COMPETICION)
      references COMPETICION (ID_COMPETICION)
go

alter table PARTIDO_LIGA
   add constraint FK_PARTIDO_LIGA__ENCUENTRO_COMPETICION foreign key (ID_COMPETICION)
      references COMPETICION (ID_COMPETICION)
go

alter table PENALTI
   add constraint FK_PENALTI_HUBO_PENA_PARTIDO_AMISTOSO foreign key (ID_PARTIDO)
      references PARTIDO_AMISTOSO (ID_PARTIDO)
go

alter table PENALTI
   add constraint FK_PENALTI_HUBO_PENA_PARTIDO_COPA foreign key (ID_PARTIDO)
      references PARTIDO_COPA (ID_PARTIDO)
go

alter table PENALTI
   add constraint FK_PENALTI_HUBO_PENA_PARTIDO_LIGA foreign key (ID_PARTIDO)
      references PARTIDO_LIGA (ID_PARTIDO)
go

alter table SANCION
   add constraint FK_SANCION_COMETE_RE_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table SANCION
   add constraint FK_SANCION_OCURRIO_S_PARTIDO_AMISTOSO foreign key (ID_PARTIDO)
      references PARTIDO_AMISTOSO (ID_PARTIDO)
go

alter table SANCION
   add constraint FK_SANCION_OCURRIO_S_PARTIDO_COPA foreign key (ID_PARTIDO)
      references PARTIDO_COPA (ID_PARTIDO)
go

alter table SANCION
   add constraint FK_SANCION_OCURRIO_S_PARTIDO_LIGA foreign key (ID_PARTIDO)
      references PARTIDO_LIGA (ID_PARTIDO)
go

alter table TACTICAS
   add constraint FK_TACTICAS_ORDENA_PERSONAL foreign key (ID_PERSONAL)
      references PERSONAL_TECNICO (ID_PERSONAL)
go

alter table TACTICAS
   add constraint FK_TACTICAS_SE_USO_PARTIDO_ foreign key (ID_PARTIDO)
      references PARTIDO_LIGA (ID_PARTIDO)
go

alter table TACTICAS
   add constraint FK_TACTICAS_SE_USO2_PARTIDO_ foreign key (ID_PARTIDO)
      references PARTIDO_COPA (ID_PARTIDO)
go

alter table TACTICAS
   add constraint FK_TACTICAS_SE_USO3_PARTIDO_ foreign key (ID_PARTIDO)
      references PARTIDO_AMISTOSO (ID_PARTIDO)
go

alter table TITULOS_Y_TROFEOS
   add constraint FK_TITULOS__LOGRO_JUGADOR foreign key (ID_PERSONAL)
      references JUGADOR (ID_PERSONAL)
go

alter table TITULOS_Y_TROFEOS
   add constraint FK_TITULOS__RELATIONS_COMPETIC foreign key (ID_COMPETICION)
      references COMPETICION (ID_COMPETICION)
go

