# frozen_string_literal: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on(
        /.*((あ|上)が(り|る|って)|(かえ|帰)(り|る)|お(つか|疲)れ|(お|終)わり|bye).*/i,
        name: 'yaminoma',
        description: 'やみのまリアクションをつける',
        all: true
      )

      def yaminoma(message)
        message.add_reaction('yaminoma')
      end

      on(
        /.*(おは|ohayo|morning).*/i,
        name: 'ohayo',
        description: 'sun_with_faceリアクションをつける',
        all: true
      )

      def ohayo(message)
        message.add_reaction('sun_with_face')
      end

      on(
        /.*(ひる|昼|ご(はん|飯)|ランチ|lunch).*/i,
        name: 'ohiru',
        description: 'rice_ballリアクションをつける',
        all: true
      )

      def ohiru(message)
        message.add_reaction('rice_ball')
      end

      on(
        /.*((もど|戻)り|再開|back).*/i,
        name: 'modori',
        description: 'backリアクションをつける',
        all: true
      )

      def modori(message)
        message.add_reaction('back')
      end

      on(
        /.*(コンビニ|こんびに).*/,
        name: 'convenience',
        description: 'famimaリアクションをつける',
        all: true
      )

      def convenience(message)
        message.add_reaction('convenience_famima')
        message.add_reaction('convenience_poplar')
        message.add_reaction('convenience_seveneleven')
        message.add_reaction('convenience_store_k')
        message.add_reaction('convenience_timely')
        message.add_reaction('convenience_seicomart')
      end
    end
  end
end
