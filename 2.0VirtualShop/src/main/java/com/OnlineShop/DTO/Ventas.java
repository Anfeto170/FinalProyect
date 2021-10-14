package com.OnlineShop.DTO;

public class Ventas {

	private String codigo_producto;
	private int cantidad;
	private float Total;
	private String NIT_cliente, Fecha;

	public String getFecha() {
		return Fecha;
	}

	public void setFecha(String fecha) {
		this.Fecha = fecha;
	}

	public String getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(String codigo_producto) {
		this.codigo_producto = codigo_producto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public float getTotal() {
		return Total;
	}

	public void setTotal(float total) {
		Total = total;
	}

	public String getNIT_cliente() {
		return NIT_cliente;
	}

	public void setNIT_cliente(String nIT_cliente) {
		NIT_cliente = nIT_cliente;
	}

	public Ventas(String nIT_cliente, String codigo_producto, int cantidad, float total, String fecha) {
		super();
		this.codigo_producto = codigo_producto;
		this.cantidad = cantidad;
		this.NIT_cliente = nIT_cliente;
		this.Total = total;
		this.Fecha = fecha;
	}

}
