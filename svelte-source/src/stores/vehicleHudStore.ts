import { writable } from 'svelte/store'
import { capAmountToHundred } from '../types/types'

type vehicleStatusType = {
  fuelColor: string,
  altitude: number,
  fuel: number,
  speed: number,
  show: boolean,
  showAltitude: boolean,
  showSquare: boolean,
  showSquareBorder: boolean,
  ShowCircle: boolean,
  showCircleBorder: boolean,
}

type vehicleHudUpdateMessageType = {
  show: boolean,
  isPaused: boolean,
  speed: number,
  fuel: number,
  altitude: number,
  showAltitude: boolean,
  showSquareB: boolean,
  showCircleB: boolean, 
}

type vehicleHudShowMessage = {
  show: boolean,
}


const store = () => {

  const vehicleStatusState: vehicleStatusType = {
    fuelColor: "#FFFFFF",
    altitude: 0,
    fuel: 0,
    speed: 0,
    show: false,
    showAltitude: false,
    showSquare: false,
    showSquareBorder: false,
    ShowCircle: false,
    showCircleBorder: false,
  }

  const { subscribe, set, update } = writable(vehicleStatusState);

  const methods = {
    receiveShowMessage(data: vehicleHudShowMessage) {
      update(state => {
        state.show = data.show;
        return state;
      })
    },
    receiveUpdateMessage(data: vehicleHudUpdateMessageType) {
      update(state => {
        state.show = data.show;
        state.speed = data.speed;
        state.altitude = data.altitude;
        state.fuel = capAmountToHundred(data.fuel);
        state.showAltitude = data.showAltitude;
        state.showSquareBorder = data.showSquareB;
        state.showCircleBorder = data.showCircleB;

        if (data.fuel <= 20) {
          state.fuelColor = "#ff0000";
        } else if (data.fuel <= 30) {
          state.fuelColor = "#dd6e14";
        } else {
          state.fuelColor = "#FFFFFF";
        }

        if (data.isPaused) {
          state.show = false;
        }

        return state;
      });
    }
  }

  return {
    subscribe,
    set,
    update,
    ...methods
  }
}

export default store();