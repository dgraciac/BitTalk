Represento un torrent. Tengo un BtMetainfo, un BtBitfield y una colección de BtPiece's ordenadas según mi metainfo.

torrent:= BtTorrent new.
torrent metainfo: aBtMetainfo . 
torrent location: aFileReference . 

------------------------------------------------------------------------------------

torrent := BtTorrent new.
torrent metainfo: (BtMetainfo new pieceLength: 10; buildOn: aFileReference ; yourself ).
torrent location: aFileReference .	



