package vo;

import java.util.Date;

public class ShowVO {

	private String filmName;
	private String cinemaName;
	private Date startTime;
	private Date endTime;
	private double price;
	private String platform;
	private double wish;
	private String genre;//comedy...
	private String type;//2D,3D...
	
	public ShowVO(String filmName, String cinemaName, Date startTime, Date endTime, double price, String platform, String genre, String type,Double wish) {
		this.cinemaName = cinemaName;
		this.filmName = filmName;
		this.price = price;
		this.endTime = endTime;
		this.platform = platform;
		this.startTime = startTime;
		this.genre = genre;
		this.type = type;
		this.wish=wish;
	}
	
	public String toString() {
		return cinemaName + " " + filmName + " " + startTime + " " + endTime +  " " + genre + " " + type + " " + price + " " + platform;
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
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getWish() {
		return wish;
	}

	public void setWish(double wish) {
		this.wish = wish;
	}
	
}
