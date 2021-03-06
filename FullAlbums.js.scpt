JsOsaDAS1.001.00bplist00�Vscripto� / * 
 T a k e   a n   i T u n e s   l i b r a r y   a n d   m a k e   a   p l a y l i s t   o f   t h e   t r a c k s   c o m p r i s i n g   c o m p l e t e   a l b u m s 
 -   A s s u m e s   t h a t   t r a c k - l e v e l   m e t a d a t a   i s   c o n s i s t e n t   a n d   c o m p l e t e   w i t h   r e g a r d   t o   a l b u m   a r t i s t ,   a l b u m   n a m e ,   t r a c k   c o u n t ,   d i s c   n u m b e r ,   a n d   d i s c   c o u n t 
 -   W r i t t e n   b y   A r n e   J o k e l a   ( a r n e @ j o k e l a . c o )   2 0 1 5 - 0 8 - 0 8 
 -   R e f e r e n c e s   &   a n t e c e d e n t s : 
 1 .   h t t p : / / a p p l e . s t a c k e x c h a n g e . c o m / q u e s t i o n s / 7 7 5 8 6 / c r e a t e - p l a y l i s t s - f o r - f u l l - a l b u m s - i n - i t u n e s - i - e - a l b u m s - w i t h - a l l - s o n g s 
 2 .   B r a d   C a m p b e l l ,   " M a k e   a    W h o l e   A l b u m    P l a y l i s t   i n   i T u n e s " ,   2 0 0 9 - 0 5 - 2 6   h t t p : / / w w w . b r a d c a m p b e l l . c o m / m a k e - a - w h o l e - a l b u m - p l a y l i s t - i n - i t u n e s / 
 3 .   M i c h a e l   C r u m p ,   " J a v a S c r i p t   f o r   O S   X   A u t o m a t i o n   b y   E x a m p l e " ,   2 0 1 4 - 0 9 - 2 2   h t t p : / / d e v e l o p e r . t e l e r i k . c o m / f e a t u r e d / j a v a s c r i p t - o s - x - a u t o m a t i o n - e x a m p l e / 
 4 .   A l e x   G u y o t ,   " G e t t i n g   S t a r t e d   w i t h   J a v a S c r i p t   f o r   A u t o m a t i o n   o n   Y o s e m i t e " ,   2 0 1 4 - 1 2 - 2 2   h t t p : / / w w w . m a c s t o r i e s . n e t / t u t o r i a l s / g e t t i n g - s t a r t e d - w i t h - j a v a s c r i p t - f o r - a u t o m a t i o n - o n - y o s e m i t e / 
 * / 
 
 v a r   c u r r e n t A p p   =   { } ; 
 c u r r e n t A p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) ; 
 c u r r e n t A p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
 
 v a r   i T u n e s   =   { } ; 
 i T u n e s   =   A p p l i c a t i o n ( ' i T u n e s ' ) ; 
 
 v a r   l i b r a r y   =   { } ; 
 l i b r a r y   =   i T u n e s . s o u r c e s [ " L i b r a r y " ] . u s e r P l a y l i s t s [ " M u s i c " ] ; 
 
 v a r   s c r i p t N a m e   =   ' ' ; 
 s c r i p t N a m e   =   ' F u l l   A l b u m s   P l a y l i s t   G e n e r a t o r ' ; 
 
 v a r   p l a y l i s t N a m e   =   ' ' ; 
 p l a y l i s t N a m e   =   ' F u l l   A l b u m s ' ; 
 
 v a r   f u l l A l b u m s A r r a y   =   [ ] ; 
 v a r   a l l S o n g s A r r a y   =   [ ] ; 
 
 v a r   r e s u l t T e x t   =   ' ' ; 
 
 f u n c t i o n   c r e a t e P l a y l i s t ( p l )   {   / /   T a k e s   a   s t r i n g   a n d   c r e a t e s   a   p l a y l i s t ,   p r o m p t i n g   i f   t h e   p l a y l i s t   a l r e a d y   e x i s t s 
 	 v a r   c P l   =   { } ; 
 	 c P l   =   i T u n e s . p l a y l i s t s [ p l ] ; 
 	 i f   ( c P l . e x i s t s ( ) )   { 
 	 	 c u r r e n t A p p . d i s p l a y A l e r t ( ' C r e a t e   P l a y l i s t ' ,   { 
 	 	 	 w i t h T i t l e :   s c r i p t N a m e , 
 	 	 	 b u t t o n s :   [ ' Y e s ' , ' N o ' ] , 
 	 	 	 m e s s a g e :   " P l a y l i s t   "   +   c P l . n a m e ( )   +   "   a l r e a d y   e x i s t s .   D e l e t e   i t ? " , 
 	 	 	 d e f a u l t B u t t o n :   1 , 
 	 	 	 c a n c e l B u t t o n :   2 
 	 	 } ) ; 
 	 	 c P l . d e l e t e ( ) ; 
 	 	 c o n s o l e . l o g ( " D e l e t e d   p l a y l i s t   "   +   p l ) ; 
 	 } 
 	 c P l   =   i T u n e s . P l a y l i s t ( ) . m a k e ( ) ; 
 	 c P l . n a m e   =   p l ; 
 	 c o n s o l e . l o g ( " C r e a t e d   p l a y l i s t   "   +   p l ) ; 
 	 r e t u r n   c P l ; 
 } 
 
 f u n c t i o n   m a k e A l l S o n g s A r r a y ( c )   {   / /   T a k e s   a   n u m b e r   o f   t r a c k s   f r o m   t h e   l i b r a r y   ( u s e   l i b r a r y C o u n t   f o r   f u l l   l i b r a r y )   a n d   c r e a t e s   a n   a r r a y   o f   s o n g   o b j e c t s 
 	 v a r   o p t i o n s   =   [ ] ; 
 	 o p t i o n s   =   [ " E x c l u d e   V a r i o u s   A r t i s t s " ,   " E x c l u d e   O b v i o u s   C o l l e c t i o n s " ,   " E x c l u d e   S i n g l e s " ,   " E x c l u d e   B a d   A l b u m s " ,   " E x c l u d e   C h i l d r e n ' s   M u s i c " ] ; 
 	 v a r   s e l e c t e d O p t i o n s   =   ' ' ; 
 	 v a r   n o V A   =   f a l s e ; 
 	 v a r   n o G H   =   f a l s e ; 
 
 	 v a r   s e l e c t e d O p t i o n s   =   c u r r e n t A p p . c h o o s e F r o m L i s t ( o p t i o n s ,   { 
 	 	 w i t h P r o m p t :   " S e l e c t   o p t i o n s : " , 
 	 	 m u l t i p l e S e l e c t i o n s A l l o w e d :   t r u e 
 	 } ) ; 
 	 n o V A   =   ( s e l e c t e d O p t i o n s . i n d e x O f ( o p t i o n s [ 0 ] )   >   - 1 ) ; 
 	 n o G H   =   ( s e l e c t e d O p t i o n s . i n d e x O f ( o p t i o n s [ 1 ] )   >   - 1 ) ; 
 	 n o S E   =   ( s e l e c t e d O p t i o n s . i n d e x O f ( o p t i o n s [ 2 ] )   >   - 1 ) ; 
 	 n o B A   =   ( s e l e c t e d O p t i o n s . i n d e x O f ( o p t i o n s [ 3 ] )   >   - 1 ) ; 
 	 n o C M   =   ( s e l e c t e d O p t i o n s . i n d e x O f ( o p t i o n s [ 4 ] )   >   - 1 ) ; 
 
 	 v a r   a S A   =   [ ] ; 
 	 f o r   ( v a r   i   =   0 ;   i   <   c ;   i + + )   { 
 	 	 v a r   c u r r e n t S o n g   =   { } ; 
 	 	 c u r r e n t T r a c k   =   l i b r a r y . t r a c k s [ i ] ; 
 	 	 i f   ( c u r r e n t T r a c k . m e d i a K i n d ( )   = =   " s o n g "   & &   c u r r e n t T r a c k . e n a b l e d ( )   & &   c u r r e n t T r a c k . a l b u m ( ) )   { 
 	 	 	 c u r r e n t S o n g   =   c u r r e n t T r a c k ; 
 	 	 	 c o n s o l e . l o g ( c u r r e n t S o n g . n a m e ( )   +   '   i s   o n   '   +   c u r r e n t S o n g . a l b u m ( ) ) ; 
 	 	 	 i f   ( n o V A   & &   c u r r e n t S o n g . c o m p i l a t i o n ( ) )   { 
 	 	 	 	 c o n s o l e . l o g ( c u r r e n t S o n g . a l b u m ( )   +   '   i s   a   c o m p i l a t i o n ' ) ; 
 	 	 	 }   e l s e   i f   ( n o G H   & &   c u r r e n t S o n g . a l b u m ( ) . s e a r c h ( / b e s t \   o f | g r e a t e s t \   h i t s | g o l d \   h i t s | p e r f e c t \   h i t s | b i g g e s t \   h i t s | n u m b e r \   o n e s | m a s t e r s | a n t h o l o g y | [ 0 - 9 ] { 4 } - [ 0 - 9 ] { 4 } / i )   >   - 1 )   { 
 	 	 	 	 c o n s o l e . l o g ( c u r r e n t S o n g . a l b u m ( )   +   '   i s   a   b e s t - o f ' ) ; 
 	 	 	 }   e l s e   i f   ( n o S E   & &   c u r r e n t S o n g . t r a c k C o u n t ( )   < =   2 )   { 
 	 	 	 	 c o n s o l e . l o g ( c u r r e n t S o n g . a l b u m ( )   +   '   i s   a   s i n g l e ' ) ; 
 	 	 	 }   e l s e   i f   ( n o B A   & &   c u r r e n t S o n g . a l b u m R a t i n g ( )   >   0   & &   c u r r e n t S o n g . a l b u m R a t i n g ( )   < =   2 0 )   { 
 	 	 	 	 c o n s o l e . l o g ( c u r r e n t S o n g . a l b u m ( )   +   '   s u c k s ' ) ; 
 	 	 	 }   e l s e   i f   ( n o C M   & &   c u r r e n t S o n g . g e n r e ( ) . s e a r c h ( / c h i l d r e n / i )   >   - 1 )   { 
 	 	 	 	 c o n s o l e . l o g ( c u r r e n t S o n g . a l b u m ( )   +   '   i s   f o r   k i d s ' ) ; 
 	 	 	 }   e l s e   { 
 	 	 	 	 a S A . p u s h ( c u r r e n t S o n g ) ; 
 	 	 	 } 
 	 	 } 
 	 } 
 	 c o n s o l e . l o g ( a S A . l e n g t h   +   "   e l i g i b l e   s o n g s   o u t   o f   "   +   c   +   "   t r a c k s   i n   s e a r c h   s e t " ) 
 	 r e t u r n   a S A ; 
 } 
 
 f u n c t i o n   m a k e F u l l A l b u m s A r r a y ( s A )   {   / /   T a k e s   a n   a r r a y   o f   s o n g   o b j e c t s   a n d   f i n d s   t h e   s u b s e t   o f   t h e m   t h a t   c o m p r i s e   c o m p l e t e   a l b u m s 
 	 v a r   a l l A l b u m s A r r a y   =   [ ] ; 
 	 v a r   a l b u m T r a c k C o u n t e r   =   [ ] ; 
 	 v a r   f A A   =   [ ] ; 
 	 v a r   f A A T r a c k s   =   0 ; 
 
 	 f o r   ( v a r   i   =   0 ;   i   <   s A . l e n g t h ;   i + + )   {   / /   L o o p   t h r o u g h   t h e   s o n g s ,   c r e a t e   a n   a r r a y   o f   a l b u m   m e t a d a t a   a n d   a   s e c o n d   a r r a y   c o u n t i n g   n u m b e r   o f   s o n g s   w e   h a v e   f r o m   t h a t   a l b u m .   T h e   m e t a d a t a   i s   s t o r e d   a s   s t r i n g s   a n d   t h e   t r a c k   c o u n t s   a r e   s t o r e d   i n   a   s e p a r a t e   a r r a y   b e c a u s e   o f   J a v a S c r i p t   l i m i t a t i o n s   o n   s e a r c h i n g   a r r a y s   a n d   o b j e c t s . 
 	 	 v a r   s o n g   =   { } ; 
 	 	 s o n g   =   s A [ i ] ; 
 
 	 	 v a r   a l b u m P r o p s A r r a y   =   [ ] ; 
 	 	 a l b u m P r o p s A r r a y   =   [ 
 	 	 	 e n c o d e U R I C o m p o n e n t ( s o n g . a l b u m A r t i s t ( ) ) , 
 	 	 	 e n c o d e U R I C o m p o n e n t ( s o n g . a l b u m ( ) ) , 
 	 	 	 s o n g . d i s c N u m b e r ( ) , 
 	 	 	 s o n g . d i s c C o u n t ( ) , 
 	 	 	 s o n g . t r a c k C o u n t ( ) 
 	 	 ] ; 
 
 	 	 v a r   a l b u m P r o p s S t r i n g   =   ' ' ; 
 	 	 a l b u m P r o p s S t r i n g   =   a l b u m P r o p s A r r a y [ 0 ] . t o S t r i n g ( )   +   ' , '   +   a l b u m P r o p s A r r a y [ 1 ] . t o S t r i n g ( )   +   ' , '   +   a l b u m P r o p s A r r a y [ 2 ] . t o S t r i n g ( )   +   ' , '   +   a l b u m P r o p s A r r a y [ 3 ] . t o S t r i n g ( )   +   ' , '   +   a l b u m P r o p s A r r a y [ 4 ] . t o S t r i n g ( ) ; 
 	 	 a l b u m M a t c h I n d e x   =   - 1 ; 
 	 	 a l b u m M a t c h I n d e x   =   a l l A l b u m s A r r a y . i n d e x O f ( a l b u m P r o p s S t r i n g ) ; 
 
 	 	 i f   ( a l b u m M a t c h I n d e x   = =   - 1 )   {   / /   H a v e n ' t   s e e n   t h i s   a l b u m   b e f o r e 
 	 	 	 a l l A l b u m s A r r a y . p u s h ( a l b u m P r o p s S t r i n g ) ; 
 	 	 	 a l b u m T r a c k C o u n t e r . p u s h ( 1 ) ; 
 	 	 }   e l s e   {   / /   H a v e   s e e n   t h i s   a l b u m   b e f o r e ,   i n c r e m e n t   t h e   t r a c k   c o u n t 
 	 	 	 a l b u m T r a c k C o u n t e r [ a l b u m M a t c h I n d e x ]   + =   1 ; 
 	 	 } 
 	 } 
 
 	 c o n s o l e . l o g ( a l l A l b u m s A r r a y . l e n g t h   +   "   t o t a l   a l b u m s   i n   s e a r c h   s e t " ) ; 
 
 	 f o r   ( v a r   j   =   0 ;   j   <   a l l A l b u m s A r r a y . l e n g t h ;   j + + )   {   / /   C o m p a r e   t h e   a l b u m ' s   m e t a d a t a   t r a c k   c o u n t   t o   t h e   n u m b e r   o f   t r a c k s   w e   a c t u a l l y   h a v e ,   a n d   c o n s t r u c t   a n   a r r a y   o f   c o m p l e t e   a l b u m s 
 	 	 a l b u m P r o p s A r r a y   =   a l l A l b u m s A r r a y [ j ] . s p l i t ( ' , ' ) ; 
 	 	 i f   ( a l b u m P r o p s A r r a y [ 4 ] . t o S t r i n g ( )   = = =   a l b u m T r a c k C o u n t e r [ j ] . t o S t r i n g ( ) )   { 
 	 	 	 a l b u m P r o p s A r r a y S t r i n g   =   a l b u m P r o p s A r r a y [ 0 ] . t o S t r i n g ( )   +   ' , '   +   a l b u m P r o p s A r r a y [ 1 ] . t o S t r i n g ( )   +   ' , '   +   a l b u m P r o p s A r r a y [ 2 ] . t o S t r i n g ( ) ; 
 	 	 	 f A A . p u s h ( a l b u m P r o p s A r r a y S t r i n g ) ; 
 	 	 	 f A A T r a c k s   + =   + a l b u m P r o p s A r r a y [ 4 ] ; 
 	 	 } 
 	 } 
 
 	 c o n s o l e . l o g ( f A A . l e n g t h   +   "   f u l l   a l b u m s   i n   s e a r c h   s e t   ( "   +   f A A T r a c k s   +   "   s o n g s ) " ) ; 
 	 r e t u r n   f A A ; 
 } 
 
 f u n c t i o n   m a k e F u l l A l b u m s S o n g s A r r a y ( s A , a A )   {   / /   T a k e s   a n   a r r a y   o f   s o n g s   a n d   a n   a r r a y   o f   a l b u m s 
 	 v a r   f A S A   =   [ ] ; 
 
 	 f o r   ( v a r   i   =   0 ;   i   <   s A . l e n g t h ;   i + + )   { 
 	 	 v a r   s o n g   =   { } ; 
 	 	 s o n g   =   s A [ i ] ; 
 
 	 	 v a r   s o n g A l b u m P r o p s A r r a y   =   [ ] ; 
 
 	 	 s o n g A l b u m P r o p s A r r a y   =   [ 
 	 	 	 e n c o d e U R I C o m p o n e n t ( s o n g . a l b u m A r t i s t ( ) ) , 
 	 	 	 e n c o d e U R I C o m p o n e n t ( s o n g . a l b u m ( ) ) , 
 	 	 	 s o n g . d i s c N u m b e r ( ) 
 	 	 ] ; 
 
 	 	 s o n g A l b u m P r o p s S t r i n g   =   ' ' ; 
 	 	 s o n g A l b u m P r o p s S t r i n g   =   s o n g A l b u m P r o p s A r r a y [ 0 ] . t o S t r i n g ( )   +   ' , '   +   s o n g A l b u m P r o p s A r r a y [ 1 ] . t o S t r i n g ( )   +   ' , '   +   s o n g A l b u m P r o p s A r r a y [ 2 ] . t o S t r i n g ( ) ; 
 
 	 	 i f   ( a A . i n d e x O f ( s o n g A l b u m P r o p s S t r i n g )   >   - 1 )   { 
 	 	 	 f A S A . p u s h ( s o n g ) ; 
 	 	 } 
 	 } 
 	 r e t u r n   f A S A ; 
 } 
 
 f u n c t i o n   s o r t F u l l A l b u m s S o n g s A r r a y ( f A S A )   { 
 	 f A S A . s o r t ( f u n c t i o n ( a , b )   { 
 	 	 v a r   k e y A   =   ' ' ; 
 	 	 v a r   k e y B   =   ' ' ; 
 	 	 k e y A   =   a . a l b u m A r t i s t ( ) . t o S t r i n g ( )   +   a . a l b u m ( ) . t o S t r i n g ( )   +   a . d i s c N u m b e r ( ) . t o S t r i n g ( )   +   " , "   +   a . t r a c k N u m b e r . t o S t r i n g ( ) ; 
 	 	 k e y B   =   b . a l b u m A r t i s t ( ) . t o S t r i n g ( )   +   b . a l b u m ( ) . t o S t r i n g ( )   +   b . d i s c N u m b e r ( ) . t o S t r i n g ( )   +   " , "   +   b . t r a c k N u m b e r . t o S t r i n g ( ) ; 
 	 	 r e t u r n   k e y A . t o L o w e r C a s e ( )   -   k e y B . t o L o w e r C a s e ( ) ; 
 	 } ) ; 
 	 r e t u r n   f A S A ; 
 } 
 
 f u n c t i o n   a d d S o n g s A r r a y T o P l a y l i s t ( s A , p l )   { 
 	 r T   =   ' ' ; 
 	 a d d s   =   0 ; 
 	 f a i l s   =   0 ; 
 
 	 f o r   ( v a r   i   =   0 ;   i   <   s A . l e n g t h ;   i + + )   { 
 	 	 v a r   s o n g   =   { } ; 
 	 	 s o n g   =   s A [ i ] ; 
 	 	 s o n g . d u p l i c a t e ( { t o : p l } )   ?   a d d s + +   :   f a i l s + + ; 
 	 } 
 
 	 r T   =   a d d s   +   "   t r a c k s   a d d e d   t o   "   +   p l . n a m e ( )   +   "   w i t h   "   +   f a i l s   +   "   f a i l s . " ; 
 	 c o n s o l e . l o g ( r T ) ; 
 	 r e t u r n   r T ; 
 } 
 
 l i b r a r y C o u n t   =   l i b r a r y . t r a c k s . l e n g t h ; 
 c o n s o l e . l o g ( l i b r a r y C o u n t   +   "   t o t a l   t r a c k s   i n   l i b r a r y " ) ; 
 
 f u l l A l b u m s P l a y l i s t   =   c r e a t e P l a y l i s t ( p l a y l i s t N a m e ) ; 
 a l l S o n g s A r r a y   =   m a k e A l l S o n g s A r r a y ( l i b r a r y C o u n t ) ;   / / l i b r a r y C o u n t 
 f u l l A l b u m s A r r a y   =   m a k e F u l l A l b u m s A r r a y ( a l l S o n g s A r r a y ) ; 
 f u l l A l b u m s S o n g s A r r a y   =   m a k e F u l l A l b u m s S o n g s A r r a y ( a l l S o n g s A r r a y ,   f u l l A l b u m s A r r a y ) ; 
 f u l l A l b u m s S o n g s A r r a y S o r t e d   =   s o r t F u l l A l b u m s S o n g s A r r a y ( f u l l A l b u m s S o n g s A r r a y ) ; 
 r e s u l t T e x t   =   a d d S o n g s A r r a y T o P l a y l i s t ( f u l l A l b u m s S o n g s A r r a y S o r t e d ,   f u l l A l b u m s P l a y l i s t ) ; 
 
 c u r r e n t A p p . d i s p l a y A l e r t ( ' F u l l   A l b u m s   P l a y l i s t   G e n e r a t o r ' ,   { 
 	 b u t t o n s :   [ ' O K ' , ' C a n c e l ' ] , 
 	 m e s s a g e :   r e s u l t T e x t , 
 	 d e f a u l t B u t t o n :   1 , 
 	 c a n c e l B u t t o n :   2 
 } ) ; 
                              =�jscr  ��ޭ