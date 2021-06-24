class Paleta {

  color[] colores; 

  //------------------------Constructor

  Paleta() {
    colores = new color[]{#3D3BB2, #123766, #0C4A6D, #1A693F, #2BA84D, #53D837, #FEF211, #FCAC28, #F85632, #EC4135, #DB3464, #78232B, #5A1E50, #432294};
  }

  //------------------------Devuelve el color de la posicion pos

  color getColor(int pos) { 
    return colores[pos];
  }
}
