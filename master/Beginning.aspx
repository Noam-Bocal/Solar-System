<%@ Page Title="Solar System" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Beginning.aspx.cs" Inherits="master.SolarSystem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
         body {
             font-family: 'Arial', sans-serif;
             background-color: white;
             margin: 0 auto;
             max-width: 1300px;
             padding: 20px;
             border: 1px solid #ddd;
             border-radius: 10px;
             box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
         }

         h1 {
             color: #4a4a4a;
             text-align: center;
             border-bottom: 2px solid #e0e0e0;
             padding-bottom: 10px;
             margin-bottom: 20px;
         }

         h2 {
             color: #2a7bd7;
             margin-top: 20px;
             margin-right: 65px;
         }

         p {
             color: #666;
             line-height: 1.5;
             font-size: 16px;
             margin-bottom: 20px;
             text-align: justify;
         }

         img {
             width: 80px;
             height: 80px;
             display: block;
             margin: 20px;
             cursor: pointer;
         }

         .caption {
             text-align: center;
             font-size: 14px;
             margin-bottom: 20px;
             color: #888;
         }

         table {
             width: 100%;
             max-width: 800px;
             margin-bottom: 20px;
             border-collapse: collapse;
         }

 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-collapse: collapse;">
        <tr>
            <td>
                <h2>Sun</h2>
            </td>
            <td>
                <h2>Mercury</h2>
            </td>
            <td>
                <h2>Venus</h2>
            </td>
            <td>
                <h2>Earth</h2>
            </td>
            <td>
                <h2>Mars</h2>
            </td>
            <td>
                <h2>Jupiter</h2>
            </td>
            <td>
                <h2>Saturn</h2>
            </td>
            <td>
                <h2>Uranus</h2>
            </td>
            <td>
                <h2>Neptune</h2>
            </td>
        </tr>
        <tr>
            <td>
                <a href="#sun-info">
                    <img src="https://freepngimg.com/thumb/sun/23771-3-sun-free-download.png" alt="Sun info">
                </a>
            </td>
            <td>
                <a href="#mercury-info">
                    <img src="https://w7.pngwing.com/pngs/669/612/png-transparent-mercury-planet-free-content-space-cartoon-s-orange-sphere-venus.png" alt="Mercury info">
                </a>
            </td>
            <td>
                <a href="#venus-info">
                    <img src="https://freepngimg.com/thumb/universe/28383-7-venus-transparent.png" alt="Venus info">
                </a>
            </td>
            <td>
                <a href="#earth-info">
                    <img src="https://freepngimg.com/thumb/globe/40502-3-earth-globe-free-hq-image.png" alt="Earth info">
                </a>
            </td>
            <td>
                <a href="#mars-info">
                    <img src="https://static.vecteezy.com/system/resources/previews/025/140/293/original/mars-planet-isolated-on-transparent-on-background-generative-ai-free-png.png" alt="Mars info">
                </a>
            </td>
            <td>
                <a href="#jupiter-info">
                    <img src="https://img.freepik.com/premium-photo/cartoon-illustration-planet-jupiter_545448-21139.jpg?" alt="Juputir info" />
                </a>
            </td>
            <td>
                <a href="#saturn-info">
                    <img src="https://img.freepik.com/premium-photo/saturn-2d-cartoon-vector-illustration-white-background_889056-28404.jpg?w=740" alt="Saturn info" />
                </a>
            </td>
            <td>
                <a href="#uranus-info">
                    <img src="https://w7.pngwing.com/pngs/850/367/png-transparent-blue-planet-planet-uranus-planet-pluto-s-blue-teal-sphere.png" alt="Uranus info" />
                </a>
            </td>
            <td>
                <a href="#neptune-info">
                    <img src="https://t4.ftcdn.net/jpg/05/42/87/07/360_F_542870741_xxvVoM8TIdAonu8HaMAAUGIFm5ymHHaa.jpg" alt="Neptune info" />
                </a>
            </td>
        </tr>
    </table>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


    <h2 id="sun-info">Information about the Sun</h2>
    <p>
        The Sun is the star at the center of the Solar System, primarily composed of hydrogen and helium. It generates energy through nuclear fusion and is essential for life on Earth.
    </p>
    <img src="https://science.nasa.gov/wp-content/uploads/2023/05/pia03149-copy.jpg" alt="Sun more info" style="max-width: 100%; height: auto; width: 300px;">
    <div class="caption">Only registered user can access more information</div>
    <div class="caption"><a href="Login.aspx">Press here to register</a></div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <h2 id="mercury-info">Information about Mercury</h2>
    <p>
        Mercury is the closest planet to the Sun, completing an orbit in 88 days. It's small, rocky, and has extreme temperature variations.
    </p>
    <img src="https://science.nasa.gov/wp-content/uploads/2017/10/pia16853.jpg?w=4096&format=jpeg" alt="Mercury more info" style="max-width: 100%; height: auto; width: 300px;">
    <div class="caption">Only registered user can access more information</div>
    <div class="caption"><a href="Login.aspx">Press here to register</a></div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <h2 id="venus-info">Information about Venus</h2>
    <p>
        Venus is the second planet from the Sun and is often referred to as Earth's "sister planet" due to their similar size and composition.
        It has a thick atmosphere composed mainly of carbon dioxide, which creates a strong greenhouse effect and leads to extreme surface temperatures.
    </p>
    <img src="https://science.nasa.gov/wp-content/uploads/2023/09/Venus.jpg?w=1536&format=webp" alt="Venus more info" style="max-width: 100%; height: auto; width: 300px;">
    <div class="caption">Only registered user can access more information</div>
    <div class="caption"><a href="Login.aspx">Press here to register</a></div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <h2 id="earth-info">Information about Earth</h2>
    <p>
        Earth is the third planet from the Sun and the only known planet to support life. It has a diverse range of ecosystems, climates, and environments.
        The presence of liquid water and a protective atmosphere are essential factors for sustaining life on Earth.
    </p>
    <img src="https://science.nasa.gov/wp-content/uploads/2023/05/earth-1-jpg.webp?w=4096&format=png" alt="Earth more info" style="max-width: 100%; height: auto; width: 300px;">
    <div class="caption">Only registered user can access more information</div>
    <div class="caption"><a href="Login.aspx">Press here to register</a></div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <h2 id="mars-info">Information about Mars</h2>
    <p>
        Mars is the fourth planet from the Sun and is often called the "Red Planet" due to its reddish appearance caused by iron oxide on its surface.
        It has polar ice caps, canyons, volcanoes, and evidence of ancient rivers, indicating a complex geological history.
    </p>
    <img src="https://science.nasa.gov/wp-content/uploads/2023/04/272_MarsInSight_poster-jpg.webp" alt="Mars more info" style="max-width: 100%; height: auto; width: 300px;">
    <div class="caption">Only registered user can access more information</div>
    <div class="caption"><a href="Login.aspx">Press here to register</a></div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <h2 id="jupiter-info">Information about Jupiter</h2>
    <p>
        Jupiter is the largest planet in the Solar System and is known for its massive size and swirling storms, including the famous Great Red Spot.
        It has a strong magnetic field and many moons, making it a fascinating object of study for astronomers.
    </p>
    <img src="https://science.nasa.gov/wp-content/uploads/2023/06/Jupiter_against_black_background_of_space-jpeg.webp" alt="Jupiter more info" style="max-width: 100%; height: auto; width: 300px;">
    <div class="caption">Only registered user can access more information</div>
    <div class="caption"><a href="Login.aspx">Press here to register</a></div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <h2 id="saturn-info">Information about Saturn</h2>
    <p>
        Saturn is known for its beautiful rings, made mostly of ice and dust particles. It is the sixth planet from the Sun and has a unique appearance in the night sky.
        The rings of Saturn are a source of fascination for astronomers and space enthusiasts.
    </p>
    <img src="https://science.nasa.gov/wp-content/uploads/2023/05/saturn-farewell-pia21345-sse-banner-1920x640-1.jpg?w=4096&format=jpeg" alt="Saturn more info" style="max-width: 100%; height: auto; width: 300px;">
    <div class="caption">Only registered user can access more information</div>
    <div class="caption"><a href="Login.aspx">Press here to register</a></div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <h2 id="uranus-info">Information about Uranus</h2>
    <p>
        Uranus is the seventh planet from the Sun and is characterized by its blue-green color. It is an ice giant with a unique rotational axis, causing it to rotate on its side.
        This planet has a complex system of rings and moons, making it a subject of scientific interest and exploration.
    </p>
    <img src="https://images-assets.nasa.gov/image/PIA18182/PIA18182~orig.jpg" alt="Uranus more info" style="max-width: 100%; height: auto; width: 300px;">
    <div class="caption">Only registered user can access more information</div>
    <div class="caption"><a href="Login.aspx">Press here to register</a></div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <h2 id="neptune-info">Information about Neptune</h2>
    <p>
        Neptune is the eighth and farthest planet from the Sun in the Solar System. It is known for its striking blue color and strong winds, making it a dynamic and fascinating planet to study.
        It has a complex system of moons and a prominent feature called the Great Dark Spot, similar to Jupiter's Great Red Spot.
    </p>
    <img src="https://science.nasa.gov/wp-content/uploads/2023/09/PIA01492-1.jpg?w=4096&format=jpeg" alt="Neptune more info" style="max-width: 100%; height: auto; width: 300px;">
    <div class="caption">Only registered user can access more information</div>
    <div class="caption"><a href="Login.aspx">Press here to register</a></div>
</asp:Content>
