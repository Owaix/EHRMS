using AutoMapper;
using DataAccess.Models;
using EHRMS.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EHRMS.App_Start
{
    public static class MappingConfig
    {
        public static void RegisterMaps()
        {
            //Mapper.CreateMap<EmployeeVM, Employee>();
            // Mapper.CreateMap<EmployeeVM, Employee>();
            //var config = new MapperConfiguration(cfg =>
            //{
            //    cfg.CreateMap(EmployeeVM, Employee);
            //    cfg.AddProfile(EmployeeVM);
            //});
            //var mapper = config.CreateMapper();
            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<Employee, EmployeeVM>().ReverseMap();
                cfg.CreateMap<DataAccess.Models.MainMenus, MenuVM>().ReverseMap();
                cfg.CreateMap<DataAccess.Models.SubMenu, FeaturesVM>().ReverseMap();
                cfg.CreateMap<Roles, RolesVM>().ReverseMap();
            });
        }
    }
}
