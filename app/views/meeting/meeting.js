var APImeeting= null;

function startmeeting(){
    const domain = 'meet.jit.si';
      const options = {
        roomName: 'JitsiMeetAPIExample',
        width: 700,
        height: 200,
        configOverwrite: { language: 'en' }
      };
      APImeeting = new JitsiMeetExternalAPI(domain, options);
      APImeeting.setParentNode(document.getElementById('contenitor'));
}