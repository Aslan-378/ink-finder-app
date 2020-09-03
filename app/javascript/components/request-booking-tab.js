export const tabs = () => {
    const ACTIVE_CLASS = 'active';

    const tabsContainer = document.querySelector('.js-tabs');
    if (tabsContainer) {
      const tabs = [].slice.call(tabsContainer.querySelectorAll('.js-tab'));
      const tabsContent = [].slice.call(tabsContainer.querySelectorAll('.js-tabs-content'));

      console.log(tabsContent)
      if ( !tabsContainer || !tabs ) {
        return;
    }

      const addListeners = () => {

          tabs.forEach( tab => {
              tab.addEventListener( 'click',  e => toggleTab( e ) );
          } )
      }

      const toggleTab = ( event ) => {
          const targetTab = event.target;
          const tabValue = targetTab.getAttribute( 'data-tab' );

          if ( targetTab.classList.contains( ACTIVE_CLASS ) ) {
              return;
          }

          tabs.forEach( tab => {
              tab.classList.remove( ACTIVE_CLASS )
          } );

          tabsContent.forEach( container => {
              const tabContainerValue = container.getAttribute( 'data-tab' );

              console.log('tabContainerValue', tabContainerValue)
              console.log('tabValue', tabValue)

              if ( tabContainerValue === tabValue ) {
                  container.classList.add( ACTIVE_CLASS );
              } else {
                  container.classList.remove( ACTIVE_CLASS );
              }
          } )

          targetTab.classList.add( ACTIVE_CLASS );

      }

      console.log(tabs)
      addListeners()
  }
}
