package com.era7.bioinfo.bio4jexplorer.comm
{
	import com.era7.communication.interfaces.ServerCallable;
	import com.era7.communication.model.BasicMapper;
	import com.era7.communication.xml.Parameters;
	import com.era7.communication.xml.Request;

	public class Bio4jExplorerMapper extends BasicMapper
	{
		/**
		 * 	Constructor
		 */
		public function Bio4jExplorerMapper()
		{			
			super();			
		}
		
		public function getEverything(serverCallable:ServerCallable):void{
			
			var request:Request = new Request();
			request.setMethod(RequestList.GET_EVERYTHING_REQUEST);			
			mainManager.loadRequest(request, serverCallable, UrlManager.GET_EVERYTHING_URL);
			
		}
		
		public function getNodes(serverCallable:ServerCallable):void{
			
			var request:Request = new Request();
			request.setMethod(RequestList.GET_NODES_REQUEST);			
			mainManager.loadRequest(request, serverCallable, UrlManager.GET_NODES_URL);
			
		}
		public function getNode(nodeName:String,serverCallable:ServerCallable):void{
			
			var request:Request = new Request();
			var params:Parameters = new Parameters();
			params.addParametersContent(<name>{nodeName}</name>);
			request.setParameters(params);
			request.setMethod(RequestList.GET_NODE_REQUEST);			
			mainManager.loadRequest(request, serverCallable, UrlManager.GET_NODE_URL);
			
		}
		public function getRelationship(relName:String,serverCallable:ServerCallable):void{
			
			var request:Request = new Request();
			var params:Parameters = new Parameters();
			params.addParametersContent(<name>{relName}</name>);
			request.setParameters(params);
			request.setMethod(RequestList.GET_RELATIONSHIP_REQUEST);			
			mainManager.loadRequest(request, serverCallable, UrlManager.GET_RELATIONSHIP_URL);
			
		}
		public function getRelationships(serverCallable:ServerCallable):void{
			
			var request:Request = new Request();
			request.setMethod(RequestList.GET_RELATIONSHIPS_REQUEST);			
			mainManager.loadRequest(request, serverCallable, UrlManager.GET_RELATIONSHIPS_URL);
			
		}
	}
}