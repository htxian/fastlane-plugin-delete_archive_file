describe Fastlane::Actions::DeleteArchiveFileAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The delete_archive_file plugin is working!")

      Fastlane::Actions::DeleteArchiveFileAction.run(nil)
    end
  end
end
