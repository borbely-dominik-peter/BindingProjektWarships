using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BindingProjektWarships
{
    public class Warship
    {
        public string Name { get; set; }
        public string Class { get; set; }
        public string Type { get; set; }
        public int Launched { get; set; }
        public string MainGunCaliber { get; set; }
        public string Country { get; set; }

        public Warship(string Line)
        {
            string[] data = Line.Split(',');
            this.Name = data[0];
            this.Class = data[1];
            this.Type = data[2];
            this.Launched = int.Parse(data[3]);
            this.MainGunCaliber = data[4];
            this.Country = data[5];
        }
    }
}
