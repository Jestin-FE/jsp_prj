package day0430;

import java.util.ArrayList;
import java.util.List;

public class Service {
	public String name() {
	return "강태일";
	
	}
	
	public List<DataDTO> subject() {
		
		List<DataDTO> list = new ArrayList<>();
		list.add(new DataDTO(1, "Java"));
		list.add(new DataDTO(2, "oracle"));
		list.add(new DataDTO(3, "Jdbc"));
		list.add(new DataDTO(4, "html"));
		list.add(new DataDTO(5, "css"));
		
		return list;
	}
}
