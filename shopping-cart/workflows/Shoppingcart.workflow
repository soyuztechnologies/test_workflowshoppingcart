{
	"contents": {
		"56c2c085-0bdf-4868-b2bf-e710089ab233": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "anubhav.shoppingcart",
			"subject": "Shoppingcart",
			"name": "Shoppingcart",
			"documentation": "Shopping cart workflow for alex 100 usd",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"684063a0-fa56-4247-ac8f-4a3e11d18f5c": {
					"name": "CancelAfter1Min"
				},
				"b9c4201f-f282-4f70-bd7e-af7b7b5ee11a": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"e23a3c02-2489-48f9-a30b-43e54e21bf9b": {
					"name": "GetProductsData"
				},
				"b10d6722-3bd8-4e29-bb6d-018da1d61b04": {
					"name": "CheckAutoApprove"
				},
				"351040fc-d4b2-4eb7-b3cc-ecd54af81bdf": {
					"name": "CheckIfAutoApproved"
				},
				"0b504a5c-9bb8-4cad-9f6a-7e433e926952": {
					"name": "ApprovalEmailAuto"
				},
				"626803d8-9bc3-4405-b7a6-927ef66da230": {
					"name": "Approve Request"
				},
				"998634d5-b8c6-473f-b81f-95688a325563": {
					"name": "WasApprovedOrNot"
				},
				"741a7dce-8657-4645-b8ca-22bef1fd1589": {
					"name": "CheckIfApproved"
				},
				"721ad43c-7e88-4fc5-8cd3-36b6db359bea": {
					"name": "ApprovalMail"
				},
				"620e1cf0-a302-4d86-a12c-01ffefcdb618": {
					"name": "RejectionMail"
				},
				"0e0cb1df-1341-4f37-856a-2420016b1839": {
					"name": "CancelledAuto"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"fe048ff6-5410-463d-8369-c549a5a84c13": {
					"name": "SequenceFlow2"
				},
				"a9ccbc96-6699-44b6-93a8-7717ede95755": {
					"name": "SequenceFlow3"
				},
				"b0113aa8-1e5d-4b03-8037-bc7a1e1229de": {
					"name": "GoApproval"
				},
				"c4c8fd64-5cc3-4496-80d9-a5b2520d646d": {
					"name": "SequenceFlow5"
				},
				"d978c120-1f4f-4aaf-a3ce-3bf5a900018c": {
					"name": "SequenceFlow6"
				},
				"c9887a63-2992-46d5-a056-a905e4690630": {
					"name": "SequenceFlow7"
				},
				"e7963f7b-6c6b-49fb-af12-21e20d495497": {
					"name": "SequenceFlow8"
				},
				"a33b52bd-3abb-435c-892a-5b6b957d8b8b": {
					"name": "SequenceFlow9"
				},
				"678915ea-7022-45b9-a5b0-db8eebdccf25": {
					"name": "SequenceFlow10"
				},
				"31fee663-dd8a-4716-a93e-a9cbd28c88ef": {
					"name": "SequenceFlow11"
				},
				"0d897324-15f8-4a4c-a369-cfe132345528": {
					"name": "SequenceFlow12"
				},
				"54719aaa-25fc-47f9-ac9c-eb782eb6afa8": {
					"name": "SequenceFlow14"
				},
				"a54050a9-81e4-4f6a-922f-f9e378c1c1e3": {
					"name": "SequenceFlow15"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"a58b57ec-3283-473d-93b8-abd827ea3b8a": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"684063a0-fa56-4247-ac8f-4a3e11d18f5c": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": true,
			"id": "boundarytimerevent1",
			"name": "CancelAfter1Min",
			"attachedToRef": "626803d8-9bc3-4405-b7a6-927ef66da230",
			"eventDefinitions": {
				"2d960861-a09a-4125-beeb-686a20819876": {}
			}
		},
		"b9c4201f-f282-4f70-bd7e-af7b7b5ee11a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"e23a3c02-2489-48f9-a30b-43e54e21bf9b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CFN",
			"destinationSource": "consumer",
			"path": "/sap/opu/odata/sap/EPM_REF_APPS_SHOP_SRV/Products('${context.id}')?$format=json",
			"httpMethod": "GET",
			"responseVariable": "${context.response}",
			"id": "servicetask1",
			"name": "GetProductsData"
		},
		"b10d6722-3bd8-4e29-bb6d-018da1d61b04": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/Shoppingcart/CheckAutoApprove.js",
			"id": "scripttask1",
			"name": "CheckAutoApprove"
		},
		"351040fc-d4b2-4eb7-b3cc-ecd54af81bdf": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "CheckIfAutoApproved",
			"documentation": "Check if auto approval is done",
			"default": "b0113aa8-1e5d-4b03-8037-bc7a1e1229de"
		},
		"0b504a5c-9bb8-4cad-9f6a-7e433e926952": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "ApprovalEmailAuto",
			"documentation": "Auto Approval Email",
			"mailDefinitionRef": "c07f3b8d-baca-4b27-856e-9342ce797876"
		},
		"626803d8-9bc3-4405-b7a6-927ef66da230": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Shopping cart for ${info.startedBy} for ${context.response.d.Name}",
			"description": "Approve Shopping cart for ${info.startedBy} for ${context.response.d.Name}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/Shoppingcart/ShoppingCart.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "shoppingcart"
			}, {
				"key": "formRevision",
				"value": "1.0.0"
			}],
			"id": "usertask1",
			"name": "Approve Request",
			"documentation": "Approve Shopping cart for ${info.startedBy} for ${context.response.d.Name}"
		},
		"998634d5-b8c6-473f-b81f-95688a325563": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/Shoppingcart/CheckForApproval.js",
			"id": "scripttask2",
			"name": "WasApprovedOrNot"
		},
		"741a7dce-8657-4645-b8ca-22bef1fd1589": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "CheckIfApproved",
			"default": "a33b52bd-3abb-435c-892a-5b6b957d8b8b"
		},
		"721ad43c-7e88-4fc5-8cd3-36b6db359bea": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "ApprovalMail",
			"mailDefinitionRef": "961129b3-4200-417e-80ae-1f3406fa1a9a"
		},
		"620e1cf0-a302-4d86-a12c-01ffefcdb618": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask3",
			"name": "RejectionMail",
			"mailDefinitionRef": "1841712a-f54c-4856-87f5-a8516abe2dbe"
		},
		"0e0cb1df-1341-4f37-856a-2420016b1839": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask5",
			"name": "CancelledAuto",
			"mailDefinitionRef": "f2b7e62b-5a91-4a8b-ab15-7a8b7a5789e2"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "e23a3c02-2489-48f9-a30b-43e54e21bf9b"
		},
		"fe048ff6-5410-463d-8369-c549a5a84c13": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "e23a3c02-2489-48f9-a30b-43e54e21bf9b",
			"targetRef": "b10d6722-3bd8-4e29-bb6d-018da1d61b04"
		},
		"a9ccbc96-6699-44b6-93a8-7717ede95755": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "b10d6722-3bd8-4e29-bb6d-018da1d61b04",
			"targetRef": "351040fc-d4b2-4eb7-b3cc-ecd54af81bdf"
		},
		"b0113aa8-1e5d-4b03-8037-bc7a1e1229de": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "GoApproval",
			"sourceRef": "351040fc-d4b2-4eb7-b3cc-ecd54af81bdf",
			"targetRef": "626803d8-9bc3-4405-b7a6-927ef66da230"
		},
		"c4c8fd64-5cc3-4496-80d9-a5b2520d646d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "0b504a5c-9bb8-4cad-9f6a-7e433e926952",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"d978c120-1f4f-4aaf-a3ce-3bf5a900018c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.autoApprove == true}",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "351040fc-d4b2-4eb7-b3cc-ecd54af81bdf",
			"targetRef": "0b504a5c-9bb8-4cad-9f6a-7e433e926952"
		},
		"c9887a63-2992-46d5-a056-a905e4690630": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "626803d8-9bc3-4405-b7a6-927ef66da230",
			"targetRef": "998634d5-b8c6-473f-b81f-95688a325563"
		},
		"e7963f7b-6c6b-49fb-af12-21e20d495497": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "998634d5-b8c6-473f-b81f-95688a325563",
			"targetRef": "741a7dce-8657-4645-b8ca-22bef1fd1589"
		},
		"a33b52bd-3abb-435c-892a-5b6b957d8b8b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "741a7dce-8657-4645-b8ca-22bef1fd1589",
			"targetRef": "620e1cf0-a302-4d86-a12c-01ffefcdb618"
		},
		"678915ea-7022-45b9-a5b0-db8eebdccf25": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "721ad43c-7e88-4fc5-8cd3-36b6db359bea",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"31fee663-dd8a-4716-a93e-a9cbd28c88ef": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == 'approve'}",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "741a7dce-8657-4645-b8ca-22bef1fd1589",
			"targetRef": "721ad43c-7e88-4fc5-8cd3-36b6db359bea"
		},
		"0d897324-15f8-4a4c-a369-cfe132345528": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "620e1cf0-a302-4d86-a12c-01ffefcdb618",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"54719aaa-25fc-47f9-ac9c-eb782eb6afa8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "684063a0-fa56-4247-ac8f-4a3e11d18f5c",
			"targetRef": "0e0cb1df-1341-4f37-856a-2420016b1839"
		},
		"a54050a9-81e4-4f6a-922f-f9e378c1c1e3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "0e0cb1df-1341-4f37-856a-2420016b1839",
			"targetRef": "b9c4201f-f282-4f70-bd7e-af7b7b5ee11a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"27df3805-6403-4db6-b8ed-fa4e3da91000": {},
				"ab515547-0431-4628-a3e6-1d7e16ed90f7": {},
				"9c2ab388-6c60-48d6-b168-340049ac6df4": {},
				"0dd838fb-981d-4c8b-ac96-9507827f9cff": {},
				"eb12d8fa-2bc6-4ac9-a974-498b04475c5d": {},
				"adfb3e68-0005-4d7c-a2f2-21e24df137cf": {},
				"e7dd7000-1d1a-4e2e-a056-9af123ed7e2e": {},
				"fdf33cba-bd77-4fa5-9beb-481dde750f86": {},
				"222068d1-ea06-4879-9450-ffa69326a94d": {},
				"f871cac8-a14d-450b-9ca3-020b950bb76e": {},
				"ba640d47-e5b6-429f-bbe0-c37fa583a005": {},
				"72ee9f50-988c-4455-bbc3-f7ff1b7adca8": {},
				"4742d4e8-baf4-4ea6-affa-4f9a9ff6eea2": {},
				"42efc3ae-dd13-4c7e-bba2-3f18c275a405": {},
				"16818cbd-7d75-4f45-a2ba-90c1df4d339e": {},
				"9c4a883a-d928-467f-b789-2dc1e87fa675": {},
				"28d2b10e-c91b-4de2-ba2b-17d25faba3ec": {},
				"d76e6684-ea76-4677-90b7-a8c940a6d71f": {},
				"7e0ab00a-f7c1-4593-a895-37caed68b2c5": {},
				"2f00ec51-e360-4afb-ab16-6e64d7ff7ab4": {},
				"39c3600a-b93f-4940-8f51-42f42453d057": {},
				"024be155-e2ed-4c69-a333-9b60f5fb7383": {},
				"f5fd8447-6f5d-4acb-bbc8-27d54c3fb8ed": {},
				"2949d98a-bd15-4436-a6fb-3eb7b9f7800f": {}
			}
		},
		"a58b57ec-3283-473d-93b8-abd827ea3b8a": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/Shoppingcart/payload.json",
			"id": "default-start-context"
		},
		"2d960861-a09a-4125-beeb-686a20819876": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 170.49999940395355,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 168.99999940395355,
			"y": 1033.9999940395355,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "186.49999940395355,44 186.49999940395355,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "27df3805-6403-4db6-b8ed-fa4e3da91000",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"27df3805-6403-4db6-b8ed-fa4e3da91000": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 136.49999940395355,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "e23a3c02-2489-48f9-a30b-43e54e21bf9b"
		},
		"ab515547-0431-4628-a3e6-1d7e16ed90f7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "186.49999940395355,154 186.49999940395355,204",
			"sourceSymbol": "27df3805-6403-4db6-b8ed-fa4e3da91000",
			"targetSymbol": "9c2ab388-6c60-48d6-b168-340049ac6df4",
			"object": "fe048ff6-5410-463d-8369-c549a5a84c13"
		},
		"9c2ab388-6c60-48d6-b168-340049ac6df4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 136.49999940395355,
			"y": 204,
			"width": 100,
			"height": 60,
			"object": "b10d6722-3bd8-4e29-bb6d-018da1d61b04"
		},
		"0dd838fb-981d-4c8b-ac96-9507827f9cff": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "186.49999940395355,264 186.49999940395355,314",
			"sourceSymbol": "9c2ab388-6c60-48d6-b168-340049ac6df4",
			"targetSymbol": "eb12d8fa-2bc6-4ac9-a974-498b04475c5d",
			"object": "a9ccbc96-6699-44b6-93a8-7717ede95755"
		},
		"eb12d8fa-2bc6-4ac9-a974-498b04475c5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 165.49999940395355,
			"y": 314,
			"object": "351040fc-d4b2-4eb7-b3cc-ecd54af81bdf"
		},
		"adfb3e68-0005-4d7c-a2f2-21e24df137cf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "186.49999940395355,356 186.49999940395355,390.99999940395355 225.99999940395355,390.99999940395355 225.99999940395355,425.9999988079071 260.9999988079071,425.9999988079071",
			"sourceSymbol": "eb12d8fa-2bc6-4ac9-a974-498b04475c5d",
			"targetSymbol": "222068d1-ea06-4879-9450-ffa69326a94d",
			"object": "b0113aa8-1e5d-4b03-8037-bc7a1e1229de"
		},
		"e7dd7000-1d1a-4e2e-a056-9af123ed7e2e": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 12,
			"y": 433.4999988079071,
			"width": 134,
			"height": 61,
			"object": "0b504a5c-9bb8-4cad-9f6a-7e433e926952"
		},
		"fdf33cba-bd77-4fa5-9beb-481dde750f86": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "79,494.4999988079071 79,536.9999982118607 43.499999701976776,536.9999982118607 43.499999701976776,711.9999970197678 147.49999970197678,711.9999970197678 147.49999970197678,823.9999958276749 43.499999701976776,823.9999958276749 43.499999701976776,998.999994635582 186.49999940395355,998.999994635582 186.49999940395355,1033.9999940395355",
			"sourceSymbol": "e7dd7000-1d1a-4e2e-a056-9af123ed7e2e",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "c4c8fd64-5cc3-4496-80d9-a5b2520d646d"
		},
		"222068d1-ea06-4879-9450-ffa69326a94d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 260.9999988079071,
			"y": 425.9999988079071,
			"width": 100,
			"height": 60,
			"object": "626803d8-9bc3-4405-b7a6-927ef66da230",
			"symbols": {
				"7efd965e-923d-42eb-99be-e649ec18399b": {}
			}
		},
		"f871cac8-a14d-450b-9ca3-020b950bb76e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "186.49999940395355,356 186.49999940395355,390.99999940395355 79,390.99999940395355 79,433.4999988079071",
			"sourceSymbol": "eb12d8fa-2bc6-4ac9-a974-498b04475c5d",
			"targetSymbol": "e7dd7000-1d1a-4e2e-a056-9af123ed7e2e",
			"object": "d978c120-1f4f-4aaf-a3ce-3bf5a900018c"
		},
		"ba640d47-e5b6-429f-bbe0-c37fa583a005": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "260.9999988079071,425.9999988079071 180.99999940395355,425.9999988079071 180.99999940395355,536.9999982118607 129.49999910593033,536.9999982118607 129.49999910593033,571.9999976158142",
			"sourceSymbol": "222068d1-ea06-4879-9450-ffa69326a94d",
			"targetSymbol": "72ee9f50-988c-4455-bbc3-f7ff1b7adca8",
			"object": "c9887a63-2992-46d5-a056-a905e4690630"
		},
		"72ee9f50-988c-4455-bbc3-f7ff1b7adca8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 79.49999910593033,
			"y": 571.9999976158142,
			"width": 100,
			"height": 60,
			"object": "998634d5-b8c6-473f-b81f-95688a325563"
		},
		"4742d4e8-baf4-4ea6-affa-4f9a9ff6eea2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "129.49999910593033,631.9999976158142 129.49999910593033,666.9999970197678 204.49999910593033,666.9999970197678 204.49999910593033,746.9999964237213",
			"sourceSymbol": "72ee9f50-988c-4455-bbc3-f7ff1b7adca8",
			"targetSymbol": "42efc3ae-dd13-4c7e-bba2-3f18c275a405",
			"object": "e7963f7b-6c6b-49fb-af12-21e20d495497"
		},
		"42efc3ae-dd13-4c7e-bba2-3f18c275a405": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 183.49999910593033,
			"y": 746.9999964237213,
			"object": "741a7dce-8657-4645-b8ca-22bef1fd1589"
		},
		"16818cbd-7d75-4f45-a2ba-90c1df4d339e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "204.49999910593033,788.9999964237213 204.49999910593033,868.9999958276749 279.4999991059303,868.9999958276749 279.4999991059303,903.9999952316284",
			"sourceSymbol": "42efc3ae-dd13-4c7e-bba2-3f18c275a405",
			"targetSymbol": "d76e6684-ea76-4677-90b7-a8c940a6d71f",
			"object": "a33b52bd-3abb-435c-892a-5b6b957d8b8b"
		},
		"9c4a883a-d928-467f-b789-2dc1e87fa675": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 79.49999910593033,
			"y": 903.9999952316284,
			"width": 100,
			"height": 60,
			"object": "721ad43c-7e88-4fc5-8cd3-36b6db359bea"
		},
		"28d2b10e-c91b-4de2-ba2b-17d25faba3ec": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "129.49999910593033,963.9999952316284 129.49999910593033,998.999994635582 186.49999940395355,998.999994635582 186.49999940395355,1033.9999940395355",
			"sourceSymbol": "9c4a883a-d928-467f-b789-2dc1e87fa675",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "678915ea-7022-45b9-a5b0-db8eebdccf25"
		},
		"d76e6684-ea76-4677-90b7-a8c940a6d71f": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 229.49999910593033,
			"y": 903.9999952316284,
			"width": 100,
			"height": 60,
			"object": "620e1cf0-a302-4d86-a12c-01ffefcdb618"
		},
		"7e0ab00a-f7c1-4593-a895-37caed68b2c5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "204.49999910593033,788.9999964237213 204.49999910593033,868.9999958276749 129.49999910593033,868.9999958276749 129.49999910593033,903.9999952316284",
			"sourceSymbol": "42efc3ae-dd13-4c7e-bba2-3f18c275a405",
			"targetSymbol": "9c4a883a-d928-467f-b789-2dc1e87fa675",
			"object": "31fee663-dd8a-4716-a93e-a9cbd28c88ef"
		},
		"2f00ec51-e360-4afb-ab16-6e64d7ff7ab4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "279.4999991059303,963.9999952316284 279.4999991059303,998.999994635582 186.49999940395355,998.999994635582 186.49999940395355,1033.9999940395355",
			"sourceSymbol": "d76e6684-ea76-4677-90b7-a8c940a6d71f",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "0d897324-15f8-4a4c-a369-cfe132345528"
		},
		"39c3600a-b93f-4940-8f51-42f42453d057": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 277.4999991059303,
			"y": 571.9999976158142,
			"width": 100,
			"height": 60,
			"object": "0e0cb1df-1341-4f37-856a-2420016b1839"
		},
		"024be155-e2ed-4c69-a333-9b60f5fb7383": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "317.05114936406926,501.9999988079071 317.0511474609375,537 327.5,537 327.4999991059303,571.9999976158142",
			"sourceSymbol": "7efd965e-923d-42eb-99be-e649ec18399b",
			"targetSymbol": "39c3600a-b93f-4940-8f51-42f42453d057",
			"object": "54719aaa-25fc-47f9-ac9c-eb782eb6afa8"
		},
		"f5fd8447-6f5d-4acb-bbc8-27d54c3fb8ed": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 427.4999991059303,
			"y": 584.4999976158142,
			"width": 35,
			"height": 35,
			"object": "b9c4201f-f282-4f70-bd7e-af7b7b5ee11a"
		},
		"2949d98a-bd15-4436-a6fb-3eb7b9f7800f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "327.4999991059303,601.9999976158142 444.9999991059303,601.9999976158142",
			"sourceSymbol": "39c3600a-b93f-4940-8f51-42f42453d057",
			"targetSymbol": "f5fd8447-6f5d-4acb-bbc8-27d54c3fb8ed",
			"object": "a54050a9-81e4-4f6a-922f-f9e378c1c1e3"
		},
		"7efd965e-923d-42eb-99be-e649ec18399b": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 301.05114936406926,
			"y": 469.9999988079071,
			"object": "684063a0-fa56-4247-ac8f-4a3e11d18f5c"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"maildefinition": 4,
			"sequenceflow": 16,
			"startevent": 1,
			"boundarytimerevent": 2,
			"endevent": 2,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 2,
			"mailtask": 6,
			"exclusivegateway": 2
		},
		"c07f3b8d-baca-4b27-856e-9342ce797876": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "anubhav.abap@gmail.com",
			"subject": "Your shopping cart has been auto approved for product ${context.response.d.Name} with price ${context.response.d.Price}",
			"text": "Your shopping cart has been auto approved for product ${context.response.d.Name} with price ${context.response.d.Price}",
			"ignoreInvalidRecipients": true,
			"id": "maildefinition1"
		},
		"961129b3-4200-417e-80ae-1f3406fa1a9a": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "anubhav.abap@gmail.com",
			"subject": "Your shopping cart has been approved for product ${context.response.d.Name} with price ${context.response.d.Price}",
			"text": "Your shopping cart has been auto approved for product ${context.response.d.Name} with price ${context.response.d.Price}",
			"id": "maildefinition2"
		},
		"1841712a-f54c-4856-87f5-a8516abe2dbe": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "anubhav.abap@gmail.com",
			"subject": "Your shopping cart has been rejected for product ${context.response.d.Name} with price ${context.response.d.Price}",
			"text": "Your shopping cart has been rejected for product ${context.response.d.Name} with price ${context.response.d.Price}",
			"id": "maildefinition3"
		},
		"f2b7e62b-5a91-4a8b-ab15-7a8b7a5789e2": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition4",
			"to": "anubhav.abap@gmail.com",
			"subject": "Your shopping cart was cancelled for product ${context.response.d.Name} with price ${context.response.d.Price}",
			"reference": "/webcontent/Shoppingcart/cancel_mail.html",
			"id": "maildefinition4"
		}
	}
}