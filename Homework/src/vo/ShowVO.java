package vo;

import java.util.Date;

public class ShowVO {

	private String filmName;
	private String cinemaName;
	private Date startTime;
	private Date endTime;
	private double price;
	private Platform platform;
	
	public ShowVO(String filmName, String cinemaName, Date startTime, Date endTime, double price, Platform platform) {
		this.cinemaName = cinemaName;
		this.filmName = filmName;
		this.price = price;
		this.endTime = endTime;
		this.platform = platform;
		this.startTime = startTime;
	}
	
	public String getFilmName() {
		return filmName;
	}
	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}
	public String getCinemaName() {
		return cinemaName;
	}
	public void setCinemaName(String cinemaName) {
		this.cinemaName = cinemaName;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Platform getPlatform() {
		return platform;
	}
	public void setPlatform(Platform platform) {
		this.platform = platform;
	}
}
