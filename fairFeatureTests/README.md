# Fair Feature Tests - [![CircleCI](https://circleci.com/gh/wearefair/fair-feature-tests/tree/master.svg?style=svg&circle-token=6853398af6849a5bccd8626a9c72ea6fa88b84a7)](https://circleci.com/gh/wearefair/fair-feature-tests/tree/master)

Ruby 2.4.1

## Setup

```
brew install chromedriver
```
```
brew services start chromedriver
```
```
gem install bundler
```
```
bundle
```

## Running

### Testing local fair API and DXP
Make sure you have these repos and follow the readmes to set them up.
- https://github.com/wearefair/api-proxy
- https://github.com/wearefair/fair
- https://github.com/wearefair/dealer-portal

Login to K8 (You will need to rerun this periodically since it will disconnect without notifying you.)
```
fair login k8
```
or
```
fair login all
```

Start the api-proxy with:
```
make local
```

Start the DXP with:
```
npm run start:local-dev
```

Start the fair API with:
```
foreman start
```
This also starts the `fair proxy` for you

You will need to setup a dealer with id=1 and dealer user with email=dealer@fair.com and password=password for the tests to work. Make sure your dealer has a payment account setup. Ask a Fair API developer for help.

#### Running the tests

```
bundle exec cucumber
```

### Testing stage fair API and DXP

#### Running the tests

```
bundle exec cucumber TEST_ENV=stage
```
