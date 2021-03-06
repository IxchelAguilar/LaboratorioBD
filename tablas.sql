USE [Dulceria]
GO
/****** Object:  Table [dbo].[Cancelacion]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cancelacion](
	[N_Can] [int] NOT NULL,
	[N_Ticket] [int] NULL,
	[ID_Emp] [int] NULL,
	[ID_Client] [int] NULL,
	[ID_Dul] [int] NULL,
	[Razon_d_dev] [text] NULL,
 CONSTRAINT [PK_Cancelacion] PRIMARY KEY CLUSTERED 
(
	[N_Can] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID_Client] [int] NOT NULL,
	[Nombre] [text] NULL,
	[Telefono] [int] NULL,
	[Correo] [text] NULL,
	[RFC] [text] NULL,
	[Direccion] [text] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dulces]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dulces](
	[ID_Dul] [int] NOT NULL,
	[Marca] [text] NULL,
	[Tipo] [text] NULL,
	[Sabor] [text] NULL,
	[Precio] [money] NULL,
	[Nombre] [text] NULL,
	[ID_Prove] [int] NULL,
 CONSTRAINT [PK_Dulces] PRIMARY KEY CLUSTERED 
(
	[ID_Dul] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DVP]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DVP](
	[ID_DVP] [int] NOT NULL,
	[ID_Dul] [int] NULL,
	[ID_Prove] [int] NULL,
	[Precio] [money] NULL,
	[Cantidad] [money] NULL,
	[Subtotal] [money] NULL,
	[ID_Venta] [int] NULL,
 CONSTRAINT [PK_DVP] PRIMARY KEY CLUSTERED 
(
	[ID_DVP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID_Emp] [int] NOT NULL,
	[Nombre] [text] NULL,
	[N_Suc] [int] NULL,
	[Telefono] [int] NULL,
	[Sueldo] [money] NULL,
	[Direccion] [text] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[ID_Emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Facturacion]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturacion](
	[N_Fac] [int] NOT NULL,
	[Date_Fac] [date] NULL,
	[Date_Ven] [date] NULL,
	[ID_Client] [int] NULL,
	[N_Suc] [int] NULL,
	[ID_Emp] [int] NULL,
	[ID_Dul] [int] NULL,
	[N_Ticket] [int] NULL,
 CONSTRAINT [PK_Facturacion] PRIMARY KEY CLUSTERED 
(
	[N_Fac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[N_Suc] [int] NULL,
	[ID_Dul] [int] NULL,
	[Stock] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[ID_Prove] [int] NOT NULL,
	[Nombre] [text] NULL,
	[Telefono] [int] NULL,
	[Correo] [text] NULL,
	[Direccion] [text] NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[ID_Prove] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[N_Suc] [int] NOT NULL,
	[Direccion] [text] NULL,
	[Telefono] [int] NULL,
	[Responsable] [text] NULL,
 CONSTRAINT [PK_Sucursales] PRIMARY KEY CLUSTERED 
(
	[N_Suc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 28/10/2017 11:27:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[N_Ticket] [int] NOT NULL,
	[Date_Ticket] [date] NULL,
	[Date_Ven] [date] NULL,
	[N_Suc] [int] NULL,
	[ID_Emp] [int] NULL,
	[ID_Dul] [int] NULL,
	[Cantidad] [int] NULL,
	[Subtotal] [money] NULL,
	[IVA] [money] NULL,
	[Total] [money] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[N_Ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cancelacion]  WITH CHECK ADD  CONSTRAINT [FK_Cancelacion_Clientes] FOREIGN KEY([ID_Client])
REFERENCES [dbo].[Clientes] ([ID_Client])
GO
ALTER TABLE [dbo].[Cancelacion] CHECK CONSTRAINT [FK_Cancelacion_Clientes]
GO
ALTER TABLE [dbo].[Cancelacion]  WITH CHECK ADD  CONSTRAINT [FK_Cancelacion_Dulces] FOREIGN KEY([ID_Dul])
REFERENCES [dbo].[Dulces] ([ID_Dul])
GO
ALTER TABLE [dbo].[Cancelacion] CHECK CONSTRAINT [FK_Cancelacion_Dulces]
GO
ALTER TABLE [dbo].[Cancelacion]  WITH CHECK ADD  CONSTRAINT [FK_Cancelacion_Empleado] FOREIGN KEY([ID_Emp])
REFERENCES [dbo].[Empleado] ([ID_Emp])
GO
ALTER TABLE [dbo].[Cancelacion] CHECK CONSTRAINT [FK_Cancelacion_Empleado]
GO
ALTER TABLE [dbo].[Cancelacion]  WITH CHECK ADD  CONSTRAINT [FK_Cancelacion_Ticket] FOREIGN KEY([N_Ticket])
REFERENCES [dbo].[Ticket] ([N_Ticket])
GO
ALTER TABLE [dbo].[Cancelacion] CHECK CONSTRAINT [FK_Cancelacion_Ticket]
GO
ALTER TABLE [dbo].[Cancelacion]  WITH CHECK ADD  CONSTRAINT [FK_Cancelacion_Ticket1] FOREIGN KEY([N_Ticket])
REFERENCES [dbo].[Ticket] ([N_Ticket])
GO
ALTER TABLE [dbo].[Cancelacion] CHECK CONSTRAINT [FK_Cancelacion_Ticket1]
GO
ALTER TABLE [dbo].[Dulces]  WITH CHECK ADD  CONSTRAINT [FK_Dulces_Proveedores] FOREIGN KEY([ID_Prove])
REFERENCES [dbo].[Proveedores] ([ID_Prove])
GO
ALTER TABLE [dbo].[Dulces] CHECK CONSTRAINT [FK_Dulces_Proveedores]
GO
ALTER TABLE [dbo].[DVP]  WITH CHECK ADD  CONSTRAINT [FK_DVP_Dulces] FOREIGN KEY([ID_Dul])
REFERENCES [dbo].[Dulces] ([ID_Dul])
GO
ALTER TABLE [dbo].[DVP] CHECK CONSTRAINT [FK_DVP_Dulces]
GO
ALTER TABLE [dbo].[DVP]  WITH CHECK ADD  CONSTRAINT [FK_DVP_Dulces1] FOREIGN KEY([ID_Dul])
REFERENCES [dbo].[Dulces] ([ID_Dul])
GO
ALTER TABLE [dbo].[DVP] CHECK CONSTRAINT [FK_DVP_Dulces1]
GO
ALTER TABLE [dbo].[DVP]  WITH CHECK ADD  CONSTRAINT [FK_DVP_Proveedores] FOREIGN KEY([ID_Prove])
REFERENCES [dbo].[Proveedores] ([ID_Prove])
GO
ALTER TABLE [dbo].[DVP] CHECK CONSTRAINT [FK_DVP_Proveedores]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Sucursales] FOREIGN KEY([N_Suc])
REFERENCES [dbo].[Sucursales] ([N_Suc])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Sucursales]
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Facturacion_Clientes] FOREIGN KEY([ID_Client])
REFERENCES [dbo].[Clientes] ([ID_Client])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK_Facturacion_Clientes]
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Facturacion_Dulces] FOREIGN KEY([ID_Dul])
REFERENCES [dbo].[Dulces] ([ID_Dul])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK_Facturacion_Dulces]
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Facturacion_Empleado] FOREIGN KEY([ID_Emp])
REFERENCES [dbo].[Empleado] ([ID_Emp])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK_Facturacion_Empleado]
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Facturacion_Ticket] FOREIGN KEY([N_Ticket])
REFERENCES [dbo].[Ticket] ([N_Ticket])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK_Facturacion_Ticket]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Sucursales] FOREIGN KEY([N_Suc])
REFERENCES [dbo].[Sucursales] ([N_Suc])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Sucursales]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Dulces] FOREIGN KEY([ID_Dul])
REFERENCES [dbo].[Dulces] ([ID_Dul])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Dulces]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Sucursales] FOREIGN KEY([N_Suc])
REFERENCES [dbo].[Sucursales] ([N_Suc])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Sucursales]
GO
