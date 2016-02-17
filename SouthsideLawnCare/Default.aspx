<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SouthsideLawnCare._Default" %>

<asp:Content ID="plhMainContent" runat="server" ContentPlaceHolderID="plhMainContentPlh">
       
    <main class="site-content" role="main">
		
        <!--
        Home Slider
        ==================================== -->
		
		<section id="home-slider">
            <div id="slider" class="sl-slider-wrapper">

				<div class="sl-slider">
				
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">

						<div class="bg-img bg-img-1"></div>

						<div class="slide-caption">
                            <div class="caption-content">
                                <h2 class="animated fadeInDown">Southside Lawn Care</h2>
                                <span class="animated fadeInDown">Local, Family-Operated Business</span>
                                <a href="#contact" class="btn btn-blue btn-effect">Free Quote</a>
                            </div>
                        </div>
						
					</div>
					
					<div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
					
						<div class="bg-img bg-img-2"></div>
						<div class="slide-caption">
                            <div class="caption-content">
                                <h2>Southside Lawn Care</h2>
                                <span>Lawn Maintenance, Seasonal Cleanup and Turf Management</span>
                                <a href="#contact" class="btn btn-blue btn-effect">Free Quote</a>
                            </div>
                        </div>
						
					</div>
					
					<div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
						
						<div class="bg-img bg-img-3"></div>
						<div class="slide-caption">
                            <div class="caption-content">
                                <h2>Southside Lawn Care</h2>
                                <span>Residential and Commercial Lawn Maintenance</span>
                                <a href="#contact" class="btn btn-blue btn-effect">Free Quote</a>
                            </div>
                        </div>

					</div>

				</div><!-- /sl-slider -->

                <!-- 
                <nav id="nav-arrows" class="nav-arrows">
                    <span class="nav-arrow-prev">Previous</span>
                    <span class="nav-arrow-next">Next</span>
                </nav>
                -->
                
                <nav id="nav-arrows" class="nav-arrows hidden-xs hidden-sm visible-md visible-lg">
                    <a href="javascript:;" class="sl-prev">
                        <i class="fa fa-angle-left fa-3x"></i>
                    </a>
                    <a href="javascript:;" class="sl-next">
                        <i class="fa fa-angle-right fa-3x"></i>
                    </a>
                </nav>
                

				<nav id="nav-dots" class="nav-dots visible-xs visible-sm hidden-md hidden-lg">
					<span class="nav-dot-current"></span>
					<span></span>
					<span></span>
				</nav>

			</div><!-- /slider-wrapper -->
		</section>
		
        <!--
        End Home SliderEnd
        ==================================== -->
			
			<!-- about section -->
			<section id="about" >
				<div class="container">
					<div class="row">
						<div class="col-md-4 wow animated fadeInLeft">
							<div class="recent-works">
								<h3>Services</h3>
								<div id="works">
									<div class="work-item">
										<p>Lawn Maintenance<br />Mowing<br />Weed Trimming<br />Blowing<br />Edging<br />Pruning</p>
									</div>
									<div class="work-item">
										<p><b>Seasonal Cleanup</b><br />Spring is right around the corner! Its time to have your yard cleaned up and ready for Spring. We can clean out flower beds and islands, perform leaf removal, and limb and winter debris removal</p>
									</div>
									<div class="work-item">
										<p><b>Turf Management</b><br />Don't forget to have your lawn aerated and over-seeded for a healthier, fuller lawn. We offer these services as well.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-7 col-md-offset-1 wow animated fadeInRight">
							<div class="welcome-block">
								<h3>Welcome To Our Site</h3>								
						     	 <div class="message-body">
									<img src="Images/mattyamby.jpg" class="pull-left" alt="member">
						       		<p>Southside Lawn Care is a local, family-operated business located in central Georgia. We have a passion for providing the very best quality lawn care to our neighbors. We will always treat our clients with respect and southern hospitality. We are committed to providing high quality, honorable service for residential and commercial lawn maintenance.
                                        After college I worked for a few large corporations and learned a lot about what I didn't want to do as a business owner and picked up a few things I believe will truly benefit our clients. I also worked for others in lawn care and found lawn care is what I love and am passionate about! My wife and I are excited to start this new business together.</p>
						     	 </div>
						       	<a href="#contact" class="btn btn-border btn-effect pull-right">Get a Free Quote</a>
						    </div>
						</div>
					</div>
				</div>
			</section>
			<!-- end about section -->
			
			
			<!-- Service section -->
			<section id="service">
				<div class="container">
					<div class="row">
					
						<div class="sec-title text-center">
							<h2 class="wow animated bounceInLeft">Services</h2>
							<p class="wow animated bounceInRight">More Value For Your Dollar</p>
						</div>
						
						<div class="col-md-3 col-sm-6 col-xs-12 text-center wow animated zoomIn">
							<div class="service-item">
								<div class="service-icon">
									<i class="fa fa-home fa-3x"></i>
								</div>
								<h3>Testimonials</h3>
								<p>Coming Soon</p>
							</div>
						</div>
					
						<div class="col-md-3 col-sm-6 col-xs-12 text-center wow animated zoomIn" data-wow-delay="0.3s">
							<div class="service-item">
								<div class="service-icon">
									<a href="https://www.facebook.com/Southside-Lawn-Care-1877031139189989/" target="_blank"><i class="fa fa-tasks fa-3x"></i></a>
								</div>
								<h3><a href="https://www.facebook.com/Southside-Lawn-Care-1877031139189989/" target="_blank">Like Us On Facebook</a></h3>
								<p>Follow us on Facebook for specials! </p>
							</div>
						</div>
					
						<div class="col-md-3 col-sm-6 col-xs-12 text-center wow animated zoomIn" data-wow-delay="0.6s">
							<div class="service-item">
								<div class="service-icon">
									<i class="fa fa-clock-o fa-3x"></i>
								</div>
								<h3>Pricing</h3>
								<p>We offer weekly and Bi-weekly lawn maintenance. Weekly starts at $25 per visit and Bi-weekly starts at $35 per visit. </p>
							</div>
						</div>
					
						<div class="col-md-3 col-sm-6 col-xs-12 text-center wow animated zoomIn" data-wow-delay="0.9s">
							<div class="service-item">
								<div class="service-icon">
									<i class="fa fa-heart fa-3x"></i>
								</div>								
								<h3>Mission Statement</h3>
								<p>We go the extra mile for our clients every day</p>							
							</div>
						</div>
						
					</div>
				</div>
			</section>
			<!-- end Service section -->
			
			<!-- portfolio section -->
<!--			<section id="portfolio">
				<div class="container">
					<div class="row">
					
						<div class="sec-title text-center wow animated fadeInDown">
							<h2>FEATURED PROJECTS</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
						

						<ul class="project-wrapper wow animated fadeInUp">
							<li class="portfolio-item">
								<img src="Images/portfolio/item.jpg" class="img-responsive" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat">
								<figcaption class="mask">
									<h3>Wall street</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. </p>
								</figcaption>
								<ul class="external">
									<li><a class="fancybox" title="Araund The world" data-fancybox-group="works" href="Images/portfolio/item.jpg"><i class="fa fa-search"></i></a></li>
									<li><a href=""><i class="fa fa-link"></i></a></li>
								</ul>
							</li>
							
							<li class="portfolio-item">
								<img src="Images/portfolio/item2.jpg" class="img-responsive" alt="Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. ">
								<figcaption class="mask">
									<h3>Wall street</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. </p>
								</figcaption>
								<ul class="external">
									<li><a class="fancybox" title="Wall street" href="Images/slider/banner.jpg" data-fancybox-group="works" ><i class="fa fa-search"></i></a></li>
									<li><a href=""><i class="fa fa-link"></i></a></li>
								</ul>
							</li>
							
							<li class="portfolio-item">
								<img src="Images/portfolio/item3.jpg" class="img-responsive" alt="Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. ">
								<figcaption class="mask">
									<h3>Wall street</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. </p>
								</figcaption>
								<ul class="external">
									<li><a class="fancybox" title="Behind The world" data-fancybox-group="works" href="Images/portfolio/item3.jpg"><i class="fa fa-search"></i></a></li>
									<li><a href=""><i class="fa fa-link"></i></a></li>
								</ul>
							</li>
							
							<li class="portfolio-item">
								<img src="Images/portfolio/item4.jpg" class="img-responsive" alt="Lorem Ipsum is simply dummy text of the printing and typesetting ndustry.">
								<figcaption class="mask">
									<h3>Wall street</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. </p>
								</figcaption>
								<ul class="external">
									<li><a class="fancybox" title="Wall street 4" data-fancybox-group="works" href="Images/portfolio/item4.jpg"><i class="fa fa-search"></i></a></li>
									<li><a href=""><i class="fa fa-link"></i></a></li>
								</ul>
							</li>
							
							<li class="portfolio-item">
								<img src="Images/portfolio/item5.jpg" class="img-responsive" alt="Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. ">
								<figcaption class="mask">
									<h3>Wall street</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. </p>
								</figcaption>
								<ul class="external">
									<li><a class="fancybox" title="Wall street 5" data-fancybox-group="works" href="Images/portfolio/item5.jpg"><i class="fa fa-search"></i></a></li>
									<li><a href=""><i class="fa fa-link"></i></a></li>
								</ul>
							</li>
							
							<li class="portfolio-item">
								<img src="Images/portfolio/item6.jpg" class="img-responsive" alt="Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. ">
								<figcaption class="mask">
									<h3>Wall street</h3>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting ndustry. </p>
								</figcaption>
								<ul class="external">
									<li><a class="fancybox" title="Wall street 6" data-fancybox-group="works" href="Images/portfolio/item6.jpg"><i class="fa fa-search"></i></a></li>
									<li><a href=""><i class="fa fa-link"></i></a></li>
								</ul>
							</li>
						</ul>
						
					</div>
				</div>
			</section> -->
			<!-- end portfolio section -->
			
			<!-- Testimonial section -->
	<!--		<section id="testimonials" class="parallax">
				<div class="overlay">
					<div class="container">
						<div class="row">
						
							<div class="sec-title text-center white wow animated fadeInDown">
								<h2>What people say</h2>
							</div>
							
							<div id="testimonial" class=" wow animated fadeInUp">
								<div class="testimonial-item text-center">
									<img src="Images/member-1.jpg" alt="Our Clients">
									<div class="clearfix">
										<span>Katty Flower</span>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
									</div>
								</div>
								<div class="testimonial-item text-center">
									<img src="Images/member-1.jpg" alt="Our Clients">
									<div class="clearfix">
										<span>Katty Flower</span>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
									</div>
								</div>
								<div class="testimonial-item text-center">
									<img src="Images/member-1.jpg" alt="Our Clients">
									<div class="clearfix">
										<span>Katty Flower</span>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
									</div>
								</div>
							</div>
						
						</div>
					</div>
				</div>
			</section>-->
			<!-- end Testimonial section -->
			
			<!-- Price section -->
		<!--	<section id="price">
				<div class="container">
					<div class="row">
					
						<div class="sec-title text-center wow animated fadeInDown">
							<h2>Price</h2>
							<p>Our price for your company</p>
						</div>
						
						<div class="col-md-4 wow animated fadeInUp">
							<div class="price-table text-center">
								<span>Silver</span>
								<div class="value">
									<span>$</span>
									<span>24,35</span><br>
									<span>month</span>
								</div>
								<ul>
									<li>No Bonus Points</li>
									<li>No Bonus Points</li>
									<li>No Bonus Points</li>
									<li>No Bonus Points</li>
									<li><a href="#">sign up</a></li>
								</ul>
							</div>
						</div>
						
						<div class="col-md-4 wow animated fadeInUp" data-wow-delay="0.4s">
							<div class="price-table featured text-center">
								<span>Gold</span>
								<div class="value">
									<span>$</span>
									<span>50,00</span><br>
									<span>month</span>
								</div>
								<ul>
									<li>Free Trial</li>
									<li>Free Trial</li>
									<li>Free Trial</li>
									<li>Free Trial</li>
									<li><a href="#">sign up</a></li>
								</ul>
							</div>
						</div>
						
						<div class="col-md-4 wow animated fadeInUp" data-wow-delay="0.8s">
							<div class="price-table text-center">
								<span>Diamond</span>
								<div class="value">
									<span>$</span>
									<span>123,12</span><br>
									<span>month</span>
								</div>
								<ul>
									<li>All Bonus Points</li>
									<li>All Bonus Points</li>
									<li>All Bonus Points</li>
									<li>All Bonus Points</li>
									<li><a href="#">sign up</a></li>
								</ul>
							</div>
						</div>
		
					</div>
				</div>
			</section>-->
			<!-- end Price section -->
        
        <!-- Social section -->
		<!--	<section id="social">
				<div class="overlay">
					<div class="container">
						<div class="row">
						
							<div class="sec-title text-center wow animated fadeInDown">
								<h2>FOLLOW US</h2>
								<p>Keep up with us on social media</p>
							</div>
							
							<ul class="social-button">
								<li class="wow animated zoomIn"><a href="#"><i class="fa fa-thumbs-up fa-2x"></i></a></li>
								<li class="wow animated zoomIn" data-wow-delay="0.3s"><a href="#"><i class="fa fa-twitter fa-2x"></i></a></li>
								<li class="wow animated zoomIn" data-wow-delay="0.6s"><a href="#"><i class="fa fa-dribbble fa-2x"></i></a></li>							
							</ul>
							
						</div>
					</div>
				</div>
			</section>-->
			<!-- end Social section -->
			
			<!-- Contact section -->
			<section id="contact" >
				<div class="container">
					<div class="row">
						
						<div class="sec-title text-center wow animated fadeInDown">
							<h2>Contact</h2>
							<p>Get a Free Quote!</p>
                            <span style="font-size: 8px">All fields are required</span>
						</div>

                        <asp:UpdatePanel ID="updForm" runat="server">

                            <ContentTemplate>
                        
                            <asp:Panel CssClass="col-md-7 contact-form wow animated fadeInLeft" ID="pnlForm" runat="server" Visible="true">

                            <div class="input-field">
                            <asp:TextBox CssClass="form-control" placeholder="Your Name..." ValidationGroup="main" name="name" MaxLength="255" runat="server" ID="txtFName"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" CssClass="error" ValidationGroup="main" Display="Dynamic" ControlToValidate="txtFName" ErrorMessage="Please enter your name" runat="server"></asp:RequiredFieldValidator>
                                </div>
                            <div class="input-field">
                            <asp:TextBox CssClass="form-control" placeholder="Your Email..." ValidationGroup="main" MaxLength="255" name="email" runat="server" ID="txtEmail"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfvEmail" CssClass="error" Display="Dynamic" ValidationGroup="main" ControlToValidate="txtEmail" ErrorMessage="Please enter your email address" runat="server"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" CssClass="error" Display="Dynamic" ValidationGroup="main" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="That doesn't look like a valid email"></asp:RegularExpressionValidator>
                                </div>
                            <div class="input-field">
                            <asp:TextBox CssClass="form-control" placeholder="Your Phone Number..." MaxLength="255" ValidationGroup="main" name="phone" runat="server" ID="txtPhone"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfvPhone" CssClass="error" Display="Dynamic" ValidationGroup="main" ControlToValidate="txtPhone" ErrorMessage="Please enter your phone number" runat="server"></asp:RequiredFieldValidator>
                                </div>
                            <div class="input-field">
                            <asp:TextBox CssClass="form-control" placeholder="Subject..." MaxLength="255" ValidationGroup="main" name="subject" runat="server" ID="txtSubject"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvSubject" CssClass="error" Display="Dynamic" ValidationGroup="main" ControlToValidate="txtSubject" ErrorMessage="Please enter a subject" runat="server"></asp:RequiredFieldValidator>
                                </div>
                            <div class="input-field">
                            <asp:TextBox CssClass="form-control" placeholder="Message..." MaxLength="5000" ValidationGroup="main" name="message" runat="server" ID="txtMessage"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvMessage" CssClass="error" Display="Dynamic" ValidationGroup="main" ControlToValidate="txtMessage" ErrorMessage="Please enter a message" runat="server"></asp:RequiredFieldValidator>
                                </div>
                            <asp:Button runat="server" ID="submit" class="btn btn-blue btn-effect" ValidationGroup="main" Text="Send" OnClick="CreateAndSendEmailMessage" />
                        
                        </asp:Panel>

                       <asp:Panel CssClass="col-md-7 contact-form wow animated fadeInLeft" ID="pnlResponse" runat="server" Visible="false">
                           
                          <asp:PlaceHolder ID="plhResponse" runat="server"></asp:PlaceHolder>

                             </asp:Panel>

                                </ContentTemplate>

                            </asp:UpdatePanel>
						
						<div class="col-md-5 wow animated fadeInRight">
							<address class="contact-details">
								<h3>Contact Us</h3>						
								<p><i class="fa fa-pencil"></i>Southside Lawn Care<span>PO Box 669</span> <span>Thomaston, GA 30286</span></p><br>
								<p><i class="fa fa-phone"></i>Phone: (404) 323-8719 </p>
								<p><i class="fa fa-envelope"></i>southsidelawn2016@gmail.com</p>
							</address>
						</div>
			
					</div>
				</div>
			</section>
			<!-- end Contact section -->
			
			<section id="google-map">
				<div id="map-canvas" class="wow animated fadeInUp"></div>
			</section>
		
		</main>

    </asp:Content>

		
		
		
		