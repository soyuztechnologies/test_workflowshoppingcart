{
	"contents": {
		"8ee06fdc-373e-4a8a-bfe7-cbf23e284cb1": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.ey.mainworkflow",
			"subject": "MainWorkflow",
			"name": "MainWorkflow",
			"documentation": "Main workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"b3bbc7be-9bee-4b64-ad1b-fd8739fe4947": {
					"name": "Shoppingcart"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"8195500b-8345-4559-917f-a70d1691bfff": {
					"name": "SequenceFlow2"
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
				"49bef67a-59a2-4932-9116-d95680dc25ee": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "b3bbc7be-9bee-4b64-ad1b-fd8739fe4947"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"67895d86-0480-4146-9571-c06d17a8cc0a": {},
				"d3a8888e-1020-4904-ba8d-aa7d164d84bd": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "67895d86-0480-4146-9571-c06d17a8cc0a",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"referencedsubflow": 1
		},
		"b3bbc7be-9bee-4b64-ad1b-fd8739fe4947": {
			"classDefinition": "com.sap.bpm.wfs.ReferencedSubflow",
			"definitionId": "anubhav.shoppingcart",
			"multiInstanceLoopCharacteristics": {
				"type": "parallel",
				"collection": "${context.productDetails}",
				"completionCondition": "${context.productDetails[loop.counter].decision == \"reject\"}"
			},
			"inParameters": [{
				"sourceExpression": "${context.productDetails[loop.counter].id}",
				"targetVariable": "${context.id}"
			}],
			"outParameters": [{
				"sourceExpression": "${context.response}",
				"targetVariable": "${context.productDetails[loop.counter].response}"
			}, {
				"sourceExpression": "${context.decision}",
				"targetVariable": "${context.productDetails[loop.counter].decision}"
			}],
			"id": "referencedsubflow1",
			"name": "Shoppingcart",
			"principalPropagationRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"67895d86-0480-4146-9571-c06d17a8cc0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ReferencedSubflowSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "b3bbc7be-9bee-4b64-ad1b-fd8739fe4947"
		},
		"8195500b-8345-4559-917f-a70d1691bfff": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "b3bbc7be-9bee-4b64-ad1b-fd8739fe4947",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"d3a8888e-1020-4904-ba8d-aa7d164d84bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,117.125 357.5,117.125",
			"sourceSymbol": "67895d86-0480-4146-9571-c06d17a8cc0a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "8195500b-8345-4559-917f-a70d1691bfff"
		},
		"49bef67a-59a2-4932-9116-d95680dc25ee": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/MainWorkflow/payloadmain.json",
			"id": "default-start-context"
		}
	}
}