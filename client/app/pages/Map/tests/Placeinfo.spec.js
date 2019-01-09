import React from 'react';
import { PlaceInfo } from '../Placeinfo';

const getProps = ({
  place
} = {}) => ({
  classes: {},
  place,
  actions: {
    loadPlaces: jest.fn(),
    createPlace: jest.fn()
  }
});

const getJSX = props => (<PlaceInfo {...getProps(props)} />);

describe('PlaceInfo', () => {
  describe('snapshots', () => {
    const scenarios = [
      { place: { id: 1, name: 'place 1', description: 'a cool place', category: 'dinner', address: '123 main st.' }
      }];

    scenarios.forEach((props, i) => {
      describe(`Scenario ${i + 1}`, () => {
        it('matches snapshot', () => {
          const wrapper = shallow(getJSX(props));
          expect(wrapper).toMatchSnapshot();
        });
      });
    });
  });

  // describe('methods', () => {
  //   let wrapper;
  //   let instance;
  //   beforeAll(() => {
  //     const props = { places: [{ id: 1 }, { id: 2 }] };
  //     wrapper = shallow(<PlaceView {...getProps(props)} />);
  //     instance = wrapper.instance();
  //   });
  //   it('updates the state for open form', () => {
  //     instance.handleClickOpen();
  //     expect(wrapper.state('formOpen')).toBe(true);
  //   });
  //   it('updates the state for close form', () => {
  //     instance.handleClose();
  //     expect(wrapper.state('formOpen')).toBe(false);
  //   });
  //   it('updates the state for close form', () => {
  //     instance.createPlace({ id: 1 });
  //     expect(wrapper.state('formOpen')).toBe(false);
  //   });
  // });
});
