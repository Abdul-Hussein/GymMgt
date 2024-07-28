package com.company.Personalmgmt.serviceimpl;

public class UserServiceImplTest {

	/*@Mock
	UserRepository userRepository;

	@InjectMocks
	UserServiceImpl userServiceImpl;

	User user;*/

	/*@BeforeEach
	public void setUp() throws Exception {
		
		MockitoAnnotations.initMocks(this);

		user = new User();

		user.setId(1);
		user.setUsername("Ram");
		user.setEmail("jayaramp51096@gmail.com");
		user.setEmployeename("Jayaram");

	}

	@Test
	public void testCheckUsername() {

		when(userRepository.findByUsername(anyString())).thenReturn(user);

		boolean ob = userServiceImpl.checkUsername("Ram");

		// assert

		// assertNotNull(userDTO);
		assertEquals("Ram", user.getUsername());

	}*/

}
