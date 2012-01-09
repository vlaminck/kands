class UrlMappings
{

	static mappings = {
		"/$controller/$action?/$id?" {
			constraints {
				// apply constraints here
			}
		}
//		"/$controller/$action?/$id?" {
//			constraints {
//				controller(inList("madLibZombie"))
//			}
//			controller: "madLib"
//		}

		"/registries"(view: "/registries")
		"/maps"(view: "/maps")
		"/ourStory"(view: "/ourStory")
		"/"(view: "/home")
		"500"(view: '/error')
	}
}
