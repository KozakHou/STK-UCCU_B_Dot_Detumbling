#####################################################################################################################
     #######    ########  ########  #       #     #     #      ########   #         #####    #    #     #######
     #      #   #             #     #       #    # #   # #     #       #  #           #      ##   #    #      
     #      #   ########      #     #       #   #   # #   #    ########   #           #      # #  #    #    ### 
     #      #   #             #      #     #   #     #     #   #       #  #           #      #  # #    #       #
     #######    ########      #       #####   #      #      #  ########   ########  #####    #   ##     #######
####################################################################################################################



B-Dot Stablization檔案夾共有1檔案夾及一張png相片

omega_stablization.png檔案為模擬UCCU在2024/12/18 09:00:00時開始進行B-dot detumbling之角速度穩定照片(上方)，為時9600秒。
其中為藍線為 : Omega_X / 黃線為 : Omega_Y  /  紅線為 : Omega_Z   
初始擾動 [10 5 0] deg/sec for [X, Y, Z]，((參考CubeADCS之試驗))

下方的圖為體座標系感測到的磁場 (單位 nT) 藍線 : x, 黃線 : y, 紅線 : z




Simulate File:

內有BDOT.slx可啟動Matlab-Simulink，執行程式後，點擊最右下方的示波器圖示即可分別觀察UCCU的角速度(上)。


init_param.m是建構UCCU的參數.m檔，以下內容可再自行更動(客製化)

$ duration   %欲模擬時間長度
$ dt         %數值積分取樣長度 (建議不改)
$ Ib         %此為慣性張量轉為對角矩陣 (愈輸入其他衛星資料，使用 I = eig([Original_Inertia tensor], 'matrix'), 即可做出該衛星之對角慣性矩陣)
$ w0         %此為初始擾動 (a.k.a. Initial Condition)



^^***@@[ 本次模擬已採用2024 IGRF地磁參數(Magnetic Dipole Model)進行模擬 ]@@***^^


AOCS Parameters:
$ mtq_thd     %已採用CubeADCS所使用之磁力棒力矩
$ bdot_cycle  %採樣時間 (1/Hz)


Simulating Outcomes
![alt text](https://github.com/KozakHou/STK-UCCU_B_Dot_Detumbling/blob/main/b-dot%20stablization/omega_stablization.png)




@Citation{

	Name: KozakHou,
	email:kozak20010716@g.ncu.edu.tw,
	Tel : +886 905804898,
	Institute : National Cnetral University

	}

