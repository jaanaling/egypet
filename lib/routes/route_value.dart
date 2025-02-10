enum RouteValue {
  splash(
    path: '/',
   
  ),
  photo(
    path: '/photo',
   
  ),
  dialog(
    path: '/dialog',
  
  ),
  dictionary(
    path: '/dictionary',
   
  ),

  articles(
    path: '/articles',
    
  ),
  article(
    path: 'article',
  
  ),

  unknown(
    path: '',
 
  );

  final String path;
  const RouteValue({
    required this.path,
  });
}
