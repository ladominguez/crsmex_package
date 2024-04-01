import pandas as pd

#focal_file = '../data/focal_mechanisms.dat'

def read_focal_mechanism(filename='../data/repeaters_focal_id.cmt'):
    return pd.read_csv(filename, names=['lon','lat','depth','strike1','dip1','rake1',
                         'strike2','dip2','rake2','mantissa','exponent',
                         'lon2','lat2','repeater_seq_id'], 
                 dtype={'lon': float, 'lat': float, 'depth': float, 'strike1': float,
                     'dip1': float, 'rake1': float, 'strike2': float, 'dip2': float,
                     'rake2': float, 'mantissa': float, 'exponent': float, 'lon2': float,
                     'lat2': float, 'repeater_seq_id': int},
                 delim_whitespace=True)


def read_catalog_file(filename='/Users/antonio/Dropbox/BSL/CRSMEX/Catalogs/CATALOG_2001_2023_clean.DAT'):
    df = pd.read_csv(filename, names=['date', 'time', 'latitude', 'longitude',
                                   'depth', 'mag', 'id'], 
                                   dtype={'date':str, 'time':str, 'latitude':float,
                                          'longitude':float,'depth':float,
                                          'mag':float,'id':str}, delim_whitespace=True)

    return df

def get_roi(catalog, lat_min, lat_max, lon_min, lon_max):
    return catalog.loc[(catalog['latitude'] >= lat_min) & 
                   (catalog['latitude'] <= lat_max) &
                   (catalog['longitude'] >= lon_min) &
                   (catalog['longitude'] <= lon_max)]

def read_repeaters_file(file='../data/time_intervals_20240125.dat'):
    with open(file, 'r') as f:
        lines = f.readlines()
        df = pd.DataFrame(columns=['id', 'latitude', 'longitude',
                                   'depth', 'mag', 'no_repeaters',
                                   'Tr','dates'], dtype=None)
                                   #{'id':int,'latitude':float,
                                   #                      'longitude':float,'depth':float,
                                   #                    'mag':float,'no_repeaters':int,
                                   #                    'Tr':str,'dates':str})
        for k, line in enumerate(lines):
            info = line.split(';')
            row = pd.Series({'id':k+1,
            'latitude': float(info[0].strip().split()[0]),
            'longitude': float(info[0].strip().split()[1]),
            'depth':  float(info[0].strip().split()[2]),
            'mag': float(info[0].strip().split()[3]),
            'no_repeaters': int(info[1].strip()),
            'Tr': info[2].strip(),
            'dates': info[3].strip()})
            df = pd.concat([df, row.to_frame().T], ignore_index=True)


    return df
