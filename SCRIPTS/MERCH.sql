/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     11/07/2025 21:01:23                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INVENTARIO') and o.name = 'FK_INVENTAR_DISPONIBI_PRODUCTO')
alter table INVENTARIO
   drop constraint FK_INVENTAR_DISPONIBI_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INVENTARIO') and o.name = 'FK_INVENTAR_EXISTENCI_TIENDA')
alter table INVENTARIO
   drop constraint FK_INVENTAR_EXISTENCI_TIENDA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCTO') and o.name = 'FK_PRODUCTO_PERTENECE_CATEGORI')
alter table PRODUCTO
   drop constraint FK_PRODUCTO_PERTENECE_CATEGORI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRATO') and o.name = 'FK_TRATO_PROVEE_PROVEEDO')
alter table TRATO
   drop constraint FK_TRATO_PROVEE_PROVEEDO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRATO') and o.name = 'FK_TRATO_PROVEE2_PRODUCTO')
alter table TRATO
   drop constraint FK_TRATO_PROVEE2_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VENTA') and o.name = 'FK_VENTA_COMPRA_VE_PRODUCTO')
alter table VENTA
   drop constraint FK_VENTA_COMPRA_VE_PRODUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VENTA') and o.name = 'FK_VENTA_COMPRA_VE_CLIENTE')
alter table VENTA
   drop constraint FK_VENTA_COMPRA_VE_CLIENTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATEGORIA__PRODUCTO')
            and   type = 'U')
   drop table CATEGORIA__PRODUCTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INVENTARIO')
            and   name  = 'EXISTENCIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index INVENTARIO.EXISTENCIA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INVENTARIO')
            and   name  = 'DISPONIBILIDAD_FK'
            and   indid > 0
            and   indid < 255)
   drop index INVENTARIO.DISPONIBILIDAD_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INVENTARIO')
            and   type = 'U')
   drop table INVENTARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCTO')
            and   name  = 'PERTENECE_A_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCTO.PERTENECE_A_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCTO')
            and   type = 'U')
   drop table PRODUCTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROVEEDOR')
            and   type = 'U')
   drop table PROVEEDOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIENDA')
            and   type = 'U')
   drop table TIENDA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRATO')
            and   type = 'U')
   drop table TRATO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VENTA')
            and   type = 'U')
   drop table VENTA
go

/*==============================================================*/
/* Table: CATEGORIA__PRODUCTO                                   */
/*==============================================================*/
create table CATEGORIA__PRODUCTO (
   ID_CATEGORIA         bigint               not null,
   NOMBRE_CATEGORIA     varchar(32)          not null,
   DESCRIPCCION_CATEGORIA varchar(255)         not null,
   constraint PK_CATEGORIA__PRODUCTO primary key nonclustered (ID_CATEGORIA)
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           bigint               not null,
   NOMBRE_CLIENTE       varchar(64)          not null,
   EMAIL_CLIENTE        varchar(64)          not null,
   TELEFONO_CLIENTE     varchar(32)          not null,
   DIRECCION_CLIENTE    varchar(64)          null,
   constraint PK_CLIENTE primary key nonclustered (ID_CLIENTE)
)
go

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO (
   ID_INVENTARIO        bigint               not null,
   ID_PRODUCTOS         bigint               null,
   ID_TIENDA            bigint               not null,
   CANTIDAD_STOCK       int                  not null,
   CANTIDAD_MINIMA_STOCK int                  not null,
   constraint PK_INVENTARIO primary key nonclustered (ID_INVENTARIO)
)
go

/*==============================================================*/
/* Index: DISPONIBILIDAD_FK                                     */
/*==============================================================*/
create index DISPONIBILIDAD_FK on INVENTARIO (
ID_PRODUCTOS ASC
)
go

/*==============================================================*/
/* Index: EXISTENCIA_FK                                         */
/*==============================================================*/
create index EXISTENCIA_FK on INVENTARIO (
ID_TIENDA ASC
)
go

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   ID_PRODUCTOS         bigint               not null,
   ID_CATEGORIA         bigint               not null,
   NOMBRE_PRODUCTO      varchar(64)          not null,
   PRECIO_UNITARIO      decimal(10,2)        not null,
   COLOR_PRODUCTO       varchar(16)          not null,
   TALLA_PRODUCTO       varchar(1)           not null,
   MATERIAL_PRODUCTO    varchar(32)          not null,
   IMAGEN_PRODUCTO      image                null,
   DESCRIPCION_CORTA    varchar(255)         null,
   constraint PK_PRODUCTO primary key nonclustered (ID_PRODUCTOS)
)
go

/*==============================================================*/
/* Index: PERTENECE_A_FK                                        */
/*==============================================================*/
create index PERTENECE_A_FK on PRODUCTO (
ID_CATEGORIA ASC
)
go

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   ID_PROVEEDOR         bigint               not null,
   NOMBRE_PROVEEDOR     varchar(64)          not null,
   PERSONA_CONTACOT     varchar(32)          null,
   EMAIL_CONTACTO       varchar(64)          null,
   TELEFONO_CONTACTO    varchar(32)          null,
   DIRECCION_PROVEEDOR  varchar(128)         null,
   TERMINOS_PAGO        varchar(32)          null,
   constraint PK_PROVEEDOR primary key nonclustered (ID_PROVEEDOR)
)
go

/*==============================================================*/
/* Table: TIENDA                                                */
/*==============================================================*/
create table TIENDA (
   ID_TIENDA            bigint               not null,
   NOMBRE_TIENDA        varchar(32)          not null,
   DIRECCION_TIENDA     varchar(64)          not null,
   CIUDAD_TIENDA        varchar(16)          not null,
   TELEFONO_TIENDA      varchar(32)          null,
   constraint PK_TIENDA primary key nonclustered (ID_TIENDA)
)
go

/*==============================================================*/
/* Table: TRATO                                                 */
/*==============================================================*/
create table TRATO (
   ID_PROVEEDOR         bigint               not null,
   ID_PRODUCTOS         bigint               not null,
   constraint PK_TRATO primary key nonclustered (ID_PROVEEDOR, ID_PRODUCTOS)
)
go

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA (
   ID_PRODUCTOS         bigint               not null,
   ID_CLIENTE           bigint               not null,
   FECHA_VENTA          datetime             not null,
   MONTO_TOTAL          decimal(10,2)        not null,
   TIPO_PAGO            varchar(32)          not null,
   APLICA_DESCUENTO     bit                  null,
   constraint PK_VENTA primary key nonclustered (ID_PRODUCTOS, ID_CLIENTE)
)
go

alter table INVENTARIO
   add constraint FK_INVENTAR_DISPONIBI_PRODUCTO foreign key (ID_PRODUCTOS)
      references PRODUCTO (ID_PRODUCTOS)
go

alter table INVENTARIO
   add constraint FK_INVENTAR_EXISTENCI_TIENDA foreign key (ID_TIENDA)
      references TIENDA (ID_TIENDA)
go

alter table PRODUCTO
   add constraint FK_PRODUCTO_PERTENECE_CATEGORI foreign key (ID_CATEGORIA)
      references CATEGORIA__PRODUCTO (ID_CATEGORIA)
go

alter table TRATO
   add constraint FK_TRATO_PROVEE_PROVEEDO foreign key (ID_PROVEEDOR)
      references PROVEEDOR (ID_PROVEEDOR)
go

alter table TRATO
   add constraint FK_TRATO_PROVEE2_PRODUCTO foreign key (ID_PRODUCTOS)
      references PRODUCTO (ID_PRODUCTOS)
go

alter table VENTA
   add constraint FK_VENTA_COMPRA_VE_PRODUCTO foreign key (ID_PRODUCTOS)
      references PRODUCTO (ID_PRODUCTOS)
go

alter table VENTA
   add constraint FK_VENTA_COMPRA_VE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
go

