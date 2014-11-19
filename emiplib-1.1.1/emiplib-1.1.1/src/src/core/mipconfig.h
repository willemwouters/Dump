/*
    
  This file is a part of EMIPLIB, the EDM Media over IP Library.
  
  Copyright (C) 2006-2011  Hasselt University - Expertise Centre for
                      Digital Media (EDM) (http://www.edm.uhasselt.be)

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  
  USA

*/

#ifndef MIPCONFIG_H

#define MIPCONFIG_H

#define EMIPLIB_IMPORT 
#define EMIPLIB_EXPORT 
#ifdef EMIPLIB_COMPILING
	#define EMIPLIB_IMPORTEXPORT EMIPLIB_EXPORT
#else
	#define EMIPLIB_IMPORTEXPORT EMIPLIB_IMPORT
#endif // EMIPLIB_COMPILING

















































#ifdef MIPCONFIG_SUPPORT_AVCODEC
	#ifndef __STDC_CONSTANT_MACROS
	#define __STDC_CONSTANT_MACROS
	#endif // __STDC_CONSTANT_MACROS
#endif // MIPCONFIG_SUPPORT_AVCODEC

#endif // MIPCONFIG_H

