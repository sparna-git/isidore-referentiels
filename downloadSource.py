from urllib.request import Request, urlopen
import os
import gzip
import bz2
import graph

encoding = 'utf-8'

failed_download= "Failed to download url: {url}"

class downloadReferentiels:

    def __init__(self, reference:str, source:any) -> None:
        self.reference = reference
        self.source = source
        
    def downloadResource(self,reference:str,url:str) -> str:

        print(f"Download URL: {url}")
        file_name = url.split("/")[-1]
        name,file_extension = os.path.splitext(file_name)

        #
        r = Request(url)
        content_data = None
        # if
        try: 
            
            if (file_extension == ".gz"):
                
                    # add gzip type
                    r.add_header('Accept-Encoding', 'gzip')
                    # open urlopen
                    response = urlopen(r)
                    # decompress file
                    content = gzip.decompress(response.read())
                    decomp_req = content.splitlines()
                    # read file
                    content_data = ''.join([str(d.decode(encoding)) for d in decomp_req])
            
            if (file_extension == ".bz2"):

                # add gzip type
                r.add_header('Accept-Encoding', 'bz2')
                # open urlopen
                response = urlopen(r)
                # decompress file
                content = bz2.decompress(response.read())
                decomp_req = content.splitlines()
                # read file
                content_data = ''.join([str(d.decode(encoding)) for d in decomp_req])                
                
            if  (file_extension == ".rdf"):
                print("RDF File")
                response = urlopen(r)
                print(response)
                content_data = response.read()
        except:
            print(failed_download.format(url=url))

        return content_data
    
    def read(self) -> str:
        # Read all source url
        if (isinstance(self.source,str)):
            return self.downloadResource(self.reference,self.source) 
        elif (isinstance(self.source,list)):
            for l in self.source:
                self.downloadResource(self.reference,l)