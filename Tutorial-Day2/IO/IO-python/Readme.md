In this activity we will read and create data in Python, with the two more standard formats used in Climate Science: netCDF and GRIB.

NetCDF (Network Common Data Format) is a set of software libraries and self-describing, machine-independent data formats that support the creation, access, and sharing of array-oriented scientific data. Initially developed by the Unidata program at the University Corporation for Atmospheric Research (UCAR), it is now supported by a larger community. The format is an open standard. NetCDF Classic and 64-bit Offset Format are an international standard of the Open Geospatial Consortium.
Multiple communities use and rely on the format. Historically the format focus is in on the interoperabiity of data stored in this format. A big commitment is on backward compatibility (any new version of the library must be able to read ANY old netCDF file), and on the possibility to use it to describe multidimensional data with any reasonable attribute.

The data in a netCDF file is stored in the form of multidimensional arrays. The data stored in an array needs to be of the same type (homogeneous). A netCDF file contains dimensions, variables, and attributes. These components are used together to capture the meaning of data and relations among data fields in an array-oriented dataset. Dimensions are used to represent the shape of variables. 

If you want to run the Jupyter notebook on Leonardo, you need to use the environment available at this path:

The library that allow to read netcdf file in Python are:
 -  netcdf4
 -  xarray



 NetCDF4Py module can read and write files in both the new netCDF 4 and the old netCDF 3 format, and can create files that are readable by HDF5 clients.    
