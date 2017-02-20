require('busted');
require('sha1');

LONG_PASSAGE = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
print(LONG_PASSAGE);

describe('LuaSHA1', function()

  it("should return the correct hash for empty string", function()
    assert.are.same('da39a3ee5e6b4b0d3255bfef95601890afd80709', sha1(''));
  end);

  it("should return the correct hash for a simple string", function()
    assert.are.same('d0be2dc421be4fcd0172e5afceea3970e2f3d940', sha1('apple'));
  end)

  it("should return the correct hash for a message longer than a single block", function()
    assert.are.same('e3e4e33dca85d7336bc40a3c52d94cd9ca0b8e68', sha1(LONG_PASSAGE));
  end);

end);