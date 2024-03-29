
CREATE TABLE [dbo].[ActividadUsuario](
	[IdActividad] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[Detalles] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacenes](
	[IdAlmacen] [int] IDENTITY(1,1) NOT NULL,
	[NombreAlmacen] [nvarchar](100) NOT NULL,
	[DireccionAlmacen] [nvarchar](100) NOT NULL,
	[CapacidadMaxima] [int] NOT NULL,
 CONSTRAINT [PK__Almacene__7339837B942B4FF1] PRIMARY KEY CLUSTERED 
(
	[IdAlmacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CambiosPrecio]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CambiosPrecio](
	[IdCambio] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NULL,
	[PrecioAnterior] [decimal](10, 2) NOT NULL,
	[PrecioNuevo] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__CambiosP__B4BBA86E329AEE48] PRIMARY KEY CLUSTERED 
(
	[IdCambio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleOrdenSuministro]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleOrdenSuministro](
	[IdDetalleOrdenSuministro] [int] IDENTITY(1,1) NOT NULL,
	[IdOrdenSuministro] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK__DetalleO__87B234749B2EF76C] PRIMARY KEY CLUSTERED 
(
	[IdDetalleOrdenSuministro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EncabezadoOrdenSuministro]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EncabezadoOrdenSuministro](
	[IdOrdenSuministro] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioSolicitante] [nvarchar](100) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
 CONSTRAINT [PK__Encabeza__7CBEDCA7EE1541DD] PRIMARY KEY CLUSTERED 
(
	[IdOrdenSuministro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaAlmacen]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaAlmacen](
	[IdEntrada] [int] IDENTITY(1,1) NOT NULL,
	[IdAlmacenOrigen] [int] NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[FechaEntrada] [datetime] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdMotivo] [int] NOT NULL,
 CONSTRAINT [PK__EntradaA__BB164DEA2D345A37] PRIMARY KEY CLUSTERED 
(
	[IdEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UbicacionId] [int] NOT NULL,
	[ProductoId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK__Inventar__3214EC0755B19047] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivosEntradasSalidas]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivosEntradasSalidas](
	[IdMotivo] [int] IDENTITY(1,1) NOT NULL,
	[NombreMotivo] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__MotivosE__69F27F3D7CF5D0A8] PRIMARY KEY CLUSTERED 
(
	[IdMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movimientos]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimientos](
	[IDMovimiento] [int] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[IDUbicacion] [int] NOT NULL,
	[TipoMovimiento] [varchar](20) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[IDRemision] [int] NULL,
	[Motivo] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Movimien__AEE3CDB63CE1AC1B] PRIMARY KEY CLUSTERED 
(
	[IDMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[IdPermiso] [int] NOT NULL,
	[NombrePermiso] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Permisos__0D626EC8CE0FF4D0] PRIMARY KEY CLUSTERED 
(
	[IdPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IdProducto] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[PrecioMaximo] [decimal](10, 2) NULL,
	[PrecioMinimo] [decimal](10, 2) NULL,
	[CantidadMinima] [int] NULL,
	[CantidadMaxima] [int] NULL,
 CONSTRAINT [PK__Producto__09889210D76F8E5C] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remisiones]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remisiones](
	[IdRemision] [int] IDENTITY(1,1) NOT NULL,
	[IdOrdenSuministro] [int] NOT NULL,
	[DireccionAlmacen] [nvarchar](100) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[NombreEmpresa] [nvarchar](100) NOT NULL,
	[DestinoProductos] [nvarchar](100) NOT NULL,
	[DatosCliente] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__Remision__8E5B3E2DFC71BBB7] PRIMARY KEY CLUSTERED 
(
	[IdRemision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IdRol] [int] NOT NULL,
	[NombreRol] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Roles__2A49584CABE7506D] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles_Permisos]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles_Permisos](
	[IdRol] [int] NOT NULL,
	[IdPermiso] [int] NOT NULL,
 CONSTRAINT [PK__Roles_Pe__BA9F7EA074E92A19] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC,
	[IdPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesPermisos]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesPermisos](
	[IdRol] [int] NOT NULL,
	[IdPermiso] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC,
	[IdPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalidaAlmacen]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalidaAlmacen](
	[IdSalida] [int] IDENTITY(1,1) NOT NULL,
	[FechaSalida] [datetime] NOT NULL,
	[IdRemision] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdAlmacenDestino] [int] NULL,
	[IdMotivo] [int] NOT NULL,
 CONSTRAINT [PK__SalidaAl__5D69EC72C063E814] PRIMARY KEY CLUSTERED 
(
	[IdSalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicaciones]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicaciones](
	[IdUbicacion] [int] NOT NULL,
	[Estanteria] [varchar](50) NOT NULL,
	[Nivel] [int] NOT NULL,
	[Rack] [int] NOT NULL,
	[Caja] [int] NOT NULL,
	[Interior] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
 CONSTRAINT [PK__Ubicacio__778CAB1D86E7CE8B] PRIMARY KEY CLUSTERED 
(
	[IdUbicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] NOT NULL,
	[NombreUsuario] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK__Usuarios__5B65BF970C773B37] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuariosRoles]    Script Date: 11/03/2023 06:54:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosRoles](
	[IdUsuario] [int] NOT NULL,
	[IdRol] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC,
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetalleOrdenSuministro_IdOrdenSuministro_IdProducto]    Script Date: 11/03/2023 06:54:11 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_DetalleOrdenSuministro_IdOrdenSuministro_IdProducto] ON [dbo].[DetalleOrdenSuministro]
(
	[IdOrdenSuministro] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EntradaAlmacen_IdProducto]    Script Date: 11/03/2023 06:54:11 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_EntradaAlmacen_IdProducto] ON [dbo].[EntradaAlmacen]
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movimientos_IDProducto]    Script Date: 11/03/2023 06:54:11 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Movimientos_IDProducto] ON [dbo].[Movimientos]
(
	[IDProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF__Usuarios__Activo__7F2BE32F]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ActividadUsuario]  WITH CHECK ADD  CONSTRAINT [FK__Actividad__IdUsu__2BF46805] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[ActividadUsuario] CHECK CONSTRAINT [FK__Actividad__IdUsu__2BF46805]
GO
ALTER TABLE [dbo].[CambiosPrecio]  WITH CHECK ADD  CONSTRAINT [FK_CambiosPrecio_Productos] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[CambiosPrecio] CHECK CONSTRAINT [FK_CambiosPrecio_Productos]
GO
ALTER TABLE [dbo].[DetalleOrdenSuministro]  WITH CHECK ADD  CONSTRAINT [FK_DetalleOrdenSuministro_EncabezadoOrdenSuministro1] FOREIGN KEY([IdOrdenSuministro])
REFERENCES [dbo].[EncabezadoOrdenSuministro] ([IdOrdenSuministro])
GO
ALTER TABLE [dbo].[DetalleOrdenSuministro] CHECK CONSTRAINT [FK_DetalleOrdenSuministro_EncabezadoOrdenSuministro1]
GO
ALTER TABLE [dbo].[EntradaAlmacen]  WITH CHECK ADD  CONSTRAINT [fk_entrada_almacen_origen] FOREIGN KEY([IdAlmacenOrigen])
REFERENCES [dbo].[Almacenes] ([IdAlmacen])
GO
ALTER TABLE [dbo].[EntradaAlmacen] CHECK CONSTRAINT [fk_entrada_almacen_origen]
GO
ALTER TABLE [dbo].[EntradaAlmacen]  WITH CHECK ADD  CONSTRAINT [fk_entrada_producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[EntradaAlmacen] CHECK CONSTRAINT [fk_entrada_producto]
GO
ALTER TABLE [dbo].[EntradaAlmacen]  WITH CHECK ADD  CONSTRAINT [fk_entrada_proveedor] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedores] ([IdProveedor])
GO
ALTER TABLE [dbo].[EntradaAlmacen] CHECK CONSTRAINT [fk_entrada_proveedor]
GO
ALTER TABLE [dbo].[EntradaAlmacen]  WITH CHECK ADD  CONSTRAINT [fk_entrada_usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[EntradaAlmacen] CHECK CONSTRAINT [fk_entrada_usuario]
GO
ALTER TABLE [dbo].[EntradaAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_EntradaAlmacen_Almacen] FOREIGN KEY([IdAlmacenOrigen])
REFERENCES [dbo].[Almacenes] ([IdAlmacen])
GO
ALTER TABLE [dbo].[EntradaAlmacen] CHECK CONSTRAINT [FK_EntradaAlmacen_Almacen]
GO
ALTER TABLE [dbo].[EntradaAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_EntradaAlmacen_MotivosEntradasSalidas] FOREIGN KEY([IdMotivo])
REFERENCES [dbo].[MotivosEntradasSalidas] ([IdMotivo])
GO
ALTER TABLE [dbo].[EntradaAlmacen] CHECK CONSTRAINT [FK_EntradaAlmacen_MotivosEntradasSalidas]
GO
ALTER TABLE [dbo].[EntradaAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_EntradaAlmacen_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[EntradaAlmacen] CHECK CONSTRAINT [FK_EntradaAlmacen_Producto]
GO
ALTER TABLE [dbo].[EntradaAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_EntradaAlmacen_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[EntradaAlmacen] CHECK CONSTRAINT [FK_EntradaAlmacen_Usuario]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Producto] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Producto]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Ubicacion] FOREIGN KEY([UbicacionId])
REFERENCES [dbo].[Ubicaciones] ([IdUbicacion])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Ubicacion]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK__Movimient__IDPro__25518C17] FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK__Movimient__IDPro__25518C17]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK__Movimient__IDRem__282DF8C2] FOREIGN KEY([IDRemision])
REFERENCES [dbo].[Remisiones] ([IdRemision])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK__Movimient__IDRem__282DF8C2]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK__Movimient__IDUbi__2645B050] FOREIGN KEY([IDUbicacion])
REFERENCES [dbo].[Ubicaciones] ([IdUbicacion])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK__Movimient__IDUbi__2645B050]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK__Movimient__IDUsu__2739D489] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK__Movimient__IDUsu__2739D489]
GO
ALTER TABLE [dbo].[Remisiones]  WITH CHECK ADD  CONSTRAINT [FK_Remisiones_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[Remisiones] CHECK CONSTRAINT [FK_Remisiones_Clientes]
GO
ALTER TABLE [dbo].[Remisiones]  WITH CHECK ADD  CONSTRAINT [FK_Remisiones_EncabezadoOrdenSuministro] FOREIGN KEY([IdOrdenSuministro])
REFERENCES [dbo].[EncabezadoOrdenSuministro] ([IdOrdenSuministro])
GO
ALTER TABLE [dbo].[Remisiones] CHECK CONSTRAINT [FK_Remisiones_EncabezadoOrdenSuministro]
GO
ALTER TABLE [dbo].[Roles_Permisos]  WITH CHECK ADD  CONSTRAINT [FK__Roles_Per__IdPer__0A9D95DB] FOREIGN KEY([IdPermiso])
REFERENCES [dbo].[Permisos] ([IdPermiso])
GO
ALTER TABLE [dbo].[Roles_Permisos] CHECK CONSTRAINT [FK__Roles_Per__IdPer__0A9D95DB]
GO
ALTER TABLE [dbo].[Roles_Permisos]  WITH CHECK ADD  CONSTRAINT [FK__Roles_Per__IdRol__09A971A2] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([IdRol])
GO
ALTER TABLE [dbo].[Roles_Permisos] CHECK CONSTRAINT [FK__Roles_Per__IdRol__09A971A2]
GO
ALTER TABLE [dbo].[RolesPermisos]  WITH CHECK ADD  CONSTRAINT [FK__RolesPerm__IdPer__2917FB5A] FOREIGN KEY([IdPermiso])
REFERENCES [dbo].[Permisos] ([IdPermiso])
GO
ALTER TABLE [dbo].[RolesPermisos] CHECK CONSTRAINT [FK__RolesPerm__IdPer__2917FB5A]
GO
ALTER TABLE [dbo].[RolesPermisos]  WITH CHECK ADD  CONSTRAINT [FK__RolesPerm__IdRol__2823D721] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([IdRol])
GO
ALTER TABLE [dbo].[RolesPermisos] CHECK CONSTRAINT [FK__RolesPerm__IdRol__2823D721]
GO
ALTER TABLE [dbo].[SalidaAlmacen]  WITH CHECK ADD  CONSTRAINT [FK__SalidaAlm__IdAlm__56DEC60A] FOREIGN KEY([IdAlmacenDestino])
REFERENCES [dbo].[Almacenes] ([IdAlmacen])
GO
ALTER TABLE [dbo].[SalidaAlmacen] CHECK CONSTRAINT [FK__SalidaAlm__IdAlm__56DEC60A]
GO
ALTER TABLE [dbo].[SalidaAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_SalidaAlmacen_Almacen] FOREIGN KEY([IdAlmacenDestino])
REFERENCES [dbo].[Almacenes] ([IdAlmacen])
GO
ALTER TABLE [dbo].[SalidaAlmacen] CHECK CONSTRAINT [FK_SalidaAlmacen_Almacen]
GO
ALTER TABLE [dbo].[SalidaAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_SalidaAlmacen_MotivosEntradasSalidas] FOREIGN KEY([IdMotivo])
REFERENCES [dbo].[MotivosEntradasSalidas] ([IdMotivo])
GO
ALTER TABLE [dbo].[SalidaAlmacen] CHECK CONSTRAINT [FK_SalidaAlmacen_MotivosEntradasSalidas]
GO
ALTER TABLE [dbo].[SalidaAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_SalidaAlmacen_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[SalidaAlmacen] CHECK CONSTRAINT [FK_SalidaAlmacen_Producto]
GO
ALTER TABLE [dbo].[SalidaAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_SalidaAlmacen_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[SalidaAlmacen] CHECK CONSTRAINT [FK_SalidaAlmacen_Usuario]
GO
ALTER TABLE [dbo].[Ubicaciones]  WITH CHECK ADD  CONSTRAINT [FK_ProductoUbicacion] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[Ubicaciones] CHECK CONSTRAINT [FK_ProductoUbicacion]
GO
ALTER TABLE [dbo].[UsuariosRoles]  WITH CHECK ADD  CONSTRAINT [FK__UsuariosR__IdRol__25476A76] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Roles] ([IdRol])
GO
ALTER TABLE [dbo].[UsuariosRoles] CHECK CONSTRAINT [FK__UsuariosR__IdRol__25476A76]
GO
ALTER TABLE [dbo].[UsuariosRoles]  WITH CHECK ADD  CONSTRAINT [FK__UsuariosR__IdUsu__2453463D] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[UsuariosRoles] CHECK CONSTRAINT [FK__UsuariosR__IdUsu__2453463D]
GO
USE [master]
GO
ALTER DATABASE [InvenTrack] SET  READ_WRITE 
GO
