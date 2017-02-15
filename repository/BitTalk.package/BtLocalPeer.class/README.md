Utilization example:
-------------------------------------------------------------------------------------------------------------------------------------
If I am the creator of the .torrent:

locationString:= '/home/david/directoryIWantToShare' .

metainfo:=BtMetainfo new 
				buildOn: locationString asFileReference 
				announce: 'udp://open.demonii.com:1337/announce' 
				pieceLength: (2 raisedTo: 14).

(It's needed upload this file to a torrent index )
metainfo writeToFile: '/home/david/myMetainfo.torrent' asFileReference . 

metainfoString := '/home/david/myMetainfo.torrent'.

-------------------------------------------------------------------------------------------------------------------------------------
If I am not the creator of the .torrent:

locationString:='/home/david/BitTalk/destinationFolder'.

(It's needed download a file .torrent from a torrent index)
metainfoString:='/home/david/BitTalk/[kat.cr]the.hollow.2015.hdrip.xvid.etrg.torrent'. 

-------------------------------------------------------------------------------------------------------------------------------------
Common part:

torrent:= BtTorrent metainfoFileString: metainfoString locationString: locationString.

localPeer:= BtLocalPeer start.
localPeer addTorrent: torrent.
torrent start.
------------------------------------------------------------------------------------------------------------------------------------	
Maybe you want to stop a specific torrent only:

torrent stop.	
	
-------------------------------------------------------------------------------------------------------------------------------------
To stop local peer (and all its torrents):

localPeer stop.