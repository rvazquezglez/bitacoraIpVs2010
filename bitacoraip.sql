USE [bdd_bitacora_ip]
GO
/****** Object:  StoredProcedure [dbo].[sp_bit_delete_switch]    Script Date: 14/04/2013 23:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ing. Martín González Dávila>
-- Create date: <22/Marzo/2013>
-- Description:	<Consulta General Tabla Switch>
-- =============================================
CREATE PROCEDURE [dbo].[sp_bit_delete_switch](@pk_cve_switch varchar(20))
AS
BEGIN
    IF @pk_cve_switch != null
    BEGIN
	   DELETE FROM tb_bit_cat_switch WHERE pk_cve_switch = @pk_cve_switch
    END
END


GO
/****** Object:  StoredProcedure [dbo].[sp_bit_insert_switch]    Script Date: 14/04/2013 23:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_bit_insert_switch] (@pk_cve_switch varchar(20),@des_puerto varchar(6), @des_roseta varchar(6))
AS
BEGIN
  INSERT INTO tb_bit_cat_switch(pk_cve_switch,des_puerto,des_roseta) values (@pk_cve_switch,@des_puerto,@des_roseta)
END



GO
/****** Object:  StoredProcedure [dbo].[sp_bit_select_switch]    Script Date: 14/04/2013 23:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ing. Martín González Dávila>
-- Create date: <22/Marzo/2013>
-- Description:	<Consulta General Tabla Switch>
-- =============================================
CREATE PROCEDURE  [dbo].[sp_bit_select_switch](@pk_cve_switch varchar(20))
AS
BEGIN
    IF @pk_cve_switch = null
     BEGIN
       SELECT * FROM tb_bit_cat_switch
     END
     ELSE
     BEGIN
     	SELECT * FROM tb_bit_cat_switch WHERE pk_cve_switch = @pk_cve_switch
     END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_bit_update_switch]    Script Date: 14/04/2013 23:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ing. Martín González Dávila>
-- Create date: <22/Marzo/2013>
-- Description:	<Consulta General Tabla switch>
-- =============================================
CREATE PROCEDURE  [dbo].[sp_bit_update_switch](@pk_cve_switch varchar(20), @des_puerto varchar(6), @des_roseta varchar(6))
AS
BEGIN
  UPDATE  tb_bit_cat_switch SET des_puerto = @des_puerto,
					des_roseta = @des_roseta
   WHERE pk_cve_switch = @pk_cve_switch
END

GO
/****** Object:  Table [dbo].[tb_bit_cat_area]    Script Date: 14/04/2013 23:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_area](
	[pk_cve_area] [int] IDENTITY(5,1) NOT NULL,
	[des_area] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_area] PRIMARY KEY CLUSTERED 
(
	[pk_cve_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_cat_dga]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_dga](
	[pk_cve_dga] [int] IDENTITY(1,1) NOT NULL,
	[des_dga] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_dga] PRIMARY KEY CLUSTERED 
(
	[pk_cve_dga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_cat_empresa]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_empresa](
	[pk_cve_empresa] [int] IDENTITY(1,1) NOT NULL,
	[des_empresa] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_empresa] PRIMARY KEY CLUSTERED 
(
	[pk_cve_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_cat_equipo_computo_marca]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_equipo_computo_marca](
	[pk_cve_equipo_computo_marca] [int] IDENTITY(1,1) NOT NULL,
	[des_equipo_computo_marca] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_equipo_computo_marca] PRIMARY KEY CLUSTERED 
(
	[pk_cve_equipo_computo_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_cat_equipo_telefono_modelo]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_equipo_telefono_modelo](
	[pk_cve_equipo_telefono_modelo] [int] IDENTITY(1,1) NOT NULL,
	[des_equipo_telefono_modelo] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_equipo_telefono_modelo] PRIMARY KEY CLUSTERED 
(
	[pk_cve_equipo_telefono_modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_cat_piso]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_piso](
	[pk_cve_piso] [int] IDENTITY(1,1) NOT NULL,
	[des_piso] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_piso] PRIMARY KEY CLUSTERED 
(
	[pk_cve_piso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_cat_regional]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_regional](
	[pk_cve_regional] [int] IDENTITY(1,1) NOT NULL,
	[des_regional] [nvarchar](45) NOT NULL,
	[des_mnemonico] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_regional] PRIMARY KEY CLUSTERED 
(
	[pk_cve_regional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_cat_switch]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_switch](
	[pk_cve_switch] [int] IDENTITY(1,1) NOT NULL,
	[des_cve_switch] [nvarchar](20) NOT NULL,
	[des_puerto] [nvarchar](6) NOT NULL,
	[des_roseta] [nvarchar](6) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_switch_1] PRIMARY KEY NONCLUSTERED 
(
	[pk_cve_switch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_cat_tipo_equipo]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_tipo_equipo](
	[pk_cve_tipo_equipo] [int] IDENTITY(1,1) NOT NULL,
	[des_tipo_equipo] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_tipo_equipo] PRIMARY KEY CLUSTERED 
(
	[pk_cve_tipo_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_cat_wireless]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_cat_wireless](
	[pk_cve_wir] [int] IDENTITY(1,1) NOT NULL,
	[des_wir] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_tb_bit_cat_wireless] PRIMARY KEY CLUSTERED 
(
	[pk_cve_wir] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_ip]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_ip](
	[pk_cve_ip] [nvarchar](15) NOT NULL,
	[pfk_cve_usuario] [int] NOT NULL,
	[pfk_cve_switch] [int] NOT NULL,
	[cve_mac] [nvarchar](17) NOT NULL,
	[nom_equipo] [nvarchar](20) NOT NULL,
	[nom_resguardo_equipo_computo] [nvarchar](50) NOT NULL,
	[cve_equipo_computo_serie] [nvarchar](25) NOT NULL,
	[cve_equipo_telefono_extension] [int] NOT NULL,
	[cve_equipo_telefono_serie] [nvarchar](20) NOT NULL,
	[fk_cve_tipo_equipo] [int] NOT NULL,
	[fk_cve_mac_wireless] [int] NOT NULL,
	[fk_cve_equipo_computo_marca] [int] NOT NULL,
	[fk_cve_equipo_computo_modelo] [int] NOT NULL,
	[fk_cve_equipo_telefono_modelo] [int] NOT NULL,
 CONSTRAINT [PK_tb_bit_ip] PRIMARY KEY CLUSTERED 
(
	[pk_cve_ip] ASC,
	[pfk_cve_usuario] ASC,
	[pfk_cve_switch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_ip_historico]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_ip_historico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha_cambio] [datetime2](7) NULL,
	[cve_ip] [nvarchar](15) NOT NULL,
	[cve_usuario] [int] NOT NULL,
	[cve_switch] [int] NOT NULL,
	[cve_mac] [nvarchar](17) NOT NULL,
	[nom_equipo] [nvarchar](20) NOT NULL,
	[nom_resguardo_equipo_computo] [nvarchar](50) NOT NULL,
	[cve_equipo_computo_serie] [nvarchar](25) NOT NULL,
	[cve_equipo_telefono_extension] [int] NOT NULL,
	[cve_equipo_telefono_serie] [nvarchar](20) NOT NULL,
	[fk_cve_tipo_equipo] [int] NOT NULL,
	[fk_cve_mac_wireless] [int] NOT NULL,
	[fk_cve_equipo_computo_marca] [int] NOT NULL,
	[fk_cve_equipo_computo_modelo] [int] NOT NULL,
	[fk_cve_equipo_telefono_modelo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_usuario]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_usuario](
	[pk_cve_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nom_user_name] [nvarchar](20) NOT NULL,
	[nom_usuario] [nvarchar](20) NOT NULL,
	[ape_paterno] [nvarchar](20) NOT NULL,
	[ape_materno] [nvarchar](20) NOT NULL,
	[fk_cve_dga] [int] NOT NULL,
	[fk_cve_area] [int] NOT NULL,
	[fk_cve_empresa] [int] NOT NULL,
	[fk_cve_piso] [int] NOT NULL,
	[fk_cve_regional] [int] NOT NULL,
	[des_observacion] [nvarchar](255) NOT NULL,
	[fec_alta] [datetime2](7) NOT NULL,
	[fec_baja] [datetime2](7) NULL,
	[fec_actualiza] [datetime2](7) NULL,
 CONSTRAINT [PK_tb_bit_usuario] PRIMARY KEY CLUSTERED 
(
	[pk_cve_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bit_usuario_historico]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bit_usuario_historico](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[fecha_cambio] [date] NOT NULL,
	[cve_usuario] [int] NOT NULL,
	[nom_user_name] [nvarchar](20) NOT NULL,
	[nom_usuario] [nvarchar](20) NOT NULL,
	[ape_paterno] [nvarchar](20) NOT NULL,
	[ape_materno] [nvarchar](20) NOT NULL,
	[fk_cve_dga] [int] NOT NULL,
	[fk_cve_area] [int] NOT NULL,
	[fk_cve_empresa] [int] NOT NULL,
	[fk_cve_piso] [int] NOT NULL,
	[fk_cve_regional] [int] NOT NULL,
	[des_observacion] [nvarchar](255) NOT NULL,
	[fec_alta] [datetime2](7) NOT NULL,
	[fec_baja] [datetime2](7) NULL,
	[fec_actualiza] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_bt_cat_equipo_computo_modelo]    Script Date: 14/04/2013 23:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_bt_cat_equipo_computo_modelo](
	[pk_cve_equipo_computo_modelo] [int] IDENTITY(1,1) NOT NULL,
	[des_equipo_computo_modelo] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_tb_bt_cat_equipo_computo_modelo] PRIMARY KEY CLUSTERED 
(
	[pk_cve_equipo_computo_modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tb_bit_ip]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_equipo_computo_marca] FOREIGN KEY([fk_cve_equipo_computo_marca])
REFERENCES [dbo].[tb_bit_cat_equipo_computo_marca] ([pk_cve_equipo_computo_marca])
GO
ALTER TABLE [dbo].[tb_bit_ip] CHECK CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_equipo_computo_marca]
GO
ALTER TABLE [dbo].[tb_bit_ip]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_equipo_telefono_modelo] FOREIGN KEY([fk_cve_equipo_telefono_modelo])
REFERENCES [dbo].[tb_bit_cat_equipo_telefono_modelo] ([pk_cve_equipo_telefono_modelo])
GO
ALTER TABLE [dbo].[tb_bit_ip] CHECK CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_equipo_telefono_modelo]
GO
ALTER TABLE [dbo].[tb_bit_ip]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_switch] FOREIGN KEY([pfk_cve_switch])
REFERENCES [dbo].[tb_bit_cat_switch] ([pk_cve_switch])
GO
ALTER TABLE [dbo].[tb_bit_ip] CHECK CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_switch]
GO
ALTER TABLE [dbo].[tb_bit_ip]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_tipo_equipo] FOREIGN KEY([fk_cve_tipo_equipo])
REFERENCES [dbo].[tb_bit_cat_tipo_equipo] ([pk_cve_tipo_equipo])
GO
ALTER TABLE [dbo].[tb_bit_ip] CHECK CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_tipo_equipo]
GO
ALTER TABLE [dbo].[tb_bit_ip]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_wireless] FOREIGN KEY([fk_cve_mac_wireless])
REFERENCES [dbo].[tb_bit_cat_wireless] ([pk_cve_wir])
GO
ALTER TABLE [dbo].[tb_bit_ip] CHECK CONSTRAINT [FK_tb_bit_ip_tb_bit_cat_wireless]
GO
ALTER TABLE [dbo].[tb_bit_ip]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_tb_bit_usuario] FOREIGN KEY([pfk_cve_usuario])
REFERENCES [dbo].[tb_bit_usuario] ([pk_cve_usuario])
GO
ALTER TABLE [dbo].[tb_bit_ip] CHECK CONSTRAINT [FK_tb_bit_ip_tb_bit_usuario]
GO
ALTER TABLE [dbo].[tb_bit_ip]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_tb_bt_cat_equipo_computo_modelo] FOREIGN KEY([fk_cve_equipo_computo_modelo])
REFERENCES [dbo].[tb_bt_cat_equipo_computo_modelo] ([pk_cve_equipo_computo_modelo])
GO
ALTER TABLE [dbo].[tb_bit_ip] CHECK CONSTRAINT [FK_tb_bit_ip_tb_bt_cat_equipo_computo_modelo]
GO
ALTER TABLE [dbo].[tb_bit_ip_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_equipo_computo_marca] FOREIGN KEY([fk_cve_equipo_computo_marca])
REFERENCES [dbo].[tb_bit_cat_equipo_computo_marca] ([pk_cve_equipo_computo_marca])
GO
ALTER TABLE [dbo].[tb_bit_ip_historico] CHECK CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_equipo_computo_marca]
GO
ALTER TABLE [dbo].[tb_bit_ip_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_equipo_computo_modelo] FOREIGN KEY([fk_cve_equipo_computo_modelo])
REFERENCES [dbo].[tb_bt_cat_equipo_computo_modelo] ([pk_cve_equipo_computo_modelo])
GO
ALTER TABLE [dbo].[tb_bit_ip_historico] CHECK CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_equipo_computo_modelo]
GO
ALTER TABLE [dbo].[tb_bit_ip_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_equipo_telefono_modelo] FOREIGN KEY([fk_cve_equipo_computo_modelo])
REFERENCES [dbo].[tb_bit_cat_equipo_telefono_modelo] ([pk_cve_equipo_telefono_modelo])
GO
ALTER TABLE [dbo].[tb_bit_ip_historico] CHECK CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_equipo_telefono_modelo]
GO
ALTER TABLE [dbo].[tb_bit_ip_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_switch] FOREIGN KEY([cve_switch])
REFERENCES [dbo].[tb_bit_cat_switch] ([pk_cve_switch])
GO
ALTER TABLE [dbo].[tb_bit_ip_historico] CHECK CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_switch]
GO
ALTER TABLE [dbo].[tb_bit_ip_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_tipo_equipo] FOREIGN KEY([fk_cve_tipo_equipo])
REFERENCES [dbo].[tb_bit_cat_tipo_equipo] ([pk_cve_tipo_equipo])
GO
ALTER TABLE [dbo].[tb_bit_ip_historico] CHECK CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_tipo_equipo]
GO
ALTER TABLE [dbo].[tb_bit_ip_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_wireless] FOREIGN KEY([fk_cve_mac_wireless])
REFERENCES [dbo].[tb_bit_cat_wireless] ([pk_cve_wir])
GO
ALTER TABLE [dbo].[tb_bit_ip_historico] CHECK CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_cat_wireless]
GO
ALTER TABLE [dbo].[tb_bit_ip_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_usuario] FOREIGN KEY([cve_usuario])
REFERENCES [dbo].[tb_bit_usuario] ([pk_cve_usuario])
GO
ALTER TABLE [dbo].[tb_bit_ip_historico] CHECK CONSTRAINT [FK_tb_bit_ip_historico_tb_bit_usuario]
GO
ALTER TABLE [dbo].[tb_bit_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_area] FOREIGN KEY([fk_cve_area])
REFERENCES [dbo].[tb_bit_cat_area] ([pk_cve_area])
GO
ALTER TABLE [dbo].[tb_bit_usuario] CHECK CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_area]
GO
ALTER TABLE [dbo].[tb_bit_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_dga] FOREIGN KEY([fk_cve_dga])
REFERENCES [dbo].[tb_bit_cat_dga] ([pk_cve_dga])
GO
ALTER TABLE [dbo].[tb_bit_usuario] CHECK CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_dga]
GO
ALTER TABLE [dbo].[tb_bit_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_empresa] FOREIGN KEY([fk_cve_empresa])
REFERENCES [dbo].[tb_bit_cat_empresa] ([pk_cve_empresa])
GO
ALTER TABLE [dbo].[tb_bit_usuario] CHECK CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_empresa]
GO
ALTER TABLE [dbo].[tb_bit_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_piso] FOREIGN KEY([fk_cve_piso])
REFERENCES [dbo].[tb_bit_cat_piso] ([pk_cve_piso])
GO
ALTER TABLE [dbo].[tb_bit_usuario] CHECK CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_piso]
GO
ALTER TABLE [dbo].[tb_bit_usuario]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_regional] FOREIGN KEY([fk_cve_regional])
REFERENCES [dbo].[tb_bit_cat_regional] ([pk_cve_regional])
GO
ALTER TABLE [dbo].[tb_bit_usuario] CHECK CONSTRAINT [FK_tb_bit_usuario_tb_bit_cat_regional]
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_area] FOREIGN KEY([fk_cve_area])
REFERENCES [dbo].[tb_bit_cat_area] ([pk_cve_area])
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico] CHECK CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_area]
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_dga] FOREIGN KEY([fk_cve_dga])
REFERENCES [dbo].[tb_bit_cat_dga] ([pk_cve_dga])
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico] CHECK CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_dga]
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_empresa] FOREIGN KEY([fk_cve_empresa])
REFERENCES [dbo].[tb_bit_cat_empresa] ([pk_cve_empresa])
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico] CHECK CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_empresa]
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_piso] FOREIGN KEY([fk_cve_piso])
REFERENCES [dbo].[tb_bit_cat_piso] ([pk_cve_piso])
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico] CHECK CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_piso]
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico]  WITH CHECK ADD  CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_regional] FOREIGN KEY([fk_cve_regional])
REFERENCES [dbo].[tb_bit_cat_regional] ([pk_cve_regional])
GO
ALTER TABLE [dbo].[tb_bit_usuario_historico] CHECK CONSTRAINT [FK_tb_bit_usuario_historico_tb_bit_cat_regional]
GO
