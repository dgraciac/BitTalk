# BitTalk
BitTorrent library for Pharo

## Usage:

#### If I am the creator of the .torrent:
```
locationString:= '/path/to/directoryIWantToShare' .

metainfo:=BtMetainfo new 
				buildOn: locationString asFileReference 
				announce: 'udp://open.demonii.com:1337/announce' 
				pieceLength: (2 raisedTo: 14).
```

We need to upload this file to a torrent index
```
metainfo writeToFile: '/path/to/myMetainfo.torrent' asFileReference . 
metainfoString := '/path/to/myMetainfo.torrent'.
```

#### If I am not the creator of the .torrent:
`locationString:='/path/to/destinationFolder'.`

We have to download a file .torrent from a torrent index
`metainfoString:='/path/to/filesToShare.torrent'. `

#### Common part:
```
torrent:= BtTorrent metainfoFileString: metainfoString locationString: locationString.

localPeer:= BtLocalPeer start.
localPeer addTorrent: torrent.
torrent start.
```

#### Maybe you want to stop a specific torrent only:
`torrent stop.`	
	
#### To stop local peer (and all its torrents):
`localPeer stop.` 
