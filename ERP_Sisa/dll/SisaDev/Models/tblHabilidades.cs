﻿// Decompiled with JetBrains decompiler
// Type: SisaDev.Models.tblHabilidades
// Assembly: SisaDev, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: E70D772F-2E61-4F6B-8371-8519ED629E68
// Assembly location: \\Mac\Home\Documents\SisaDev.dll

using System;

namespace SisaDev.Models
{
  public class tblHabilidades
  {
    public Guid IdHabilidad { get; set; }

    public Guid IdUsuario { get; set; }

    public string Habilidad { get; set; }

    public Decimal Porcentaje { get; set; }

    public string Comentarios { get; set; }
  }
}
