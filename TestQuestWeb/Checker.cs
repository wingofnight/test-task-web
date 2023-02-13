using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestQuestWeb
{
    public static class Checker
    {
        public static bool CheckSingleFigure(LinkedList<int> list)
        {
            foreach (int item in list)
            {
                if (Convert.ToString(item).Length != 1)
                {
                    return false;
                }
            }
            return true;
        }

    }
}
